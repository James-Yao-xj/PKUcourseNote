#import "@preview/ctyp:0.3.0": ctyp
#let (ctypset, cjk) = ctyp()
#let (song, hei, kai, fang) = cjk
#show: ctypset

#set page(
  paper: "a4",
  margin: (top: 2cm, bottom: 2cm, left: 1cm, right: 1cm),
  header: context [
    #text(10pt, black)[
      #align(center)[数据结构与算法]]
    #line(length: 100%, stroke: gray)
  ],
   footer: context [
    #set align(center)
    #counter(page).display("1")
  ]
)

#set heading(numbering: "1.")

#align(center)[
  #text(size: 24pt, weight: "bold")[数据结构与算法A 第二讲]\
  #v(10pt)
  #text(size: 16pt)[_来源：2026年9月11日课程笔记_]
]

这节课的前半段貌似什么都没讲，“貌似”二字可以去掉嘻嘻。早八来教室看论文也挺舒服的（bushi)

= 兔子与樱花

原题参考http://cs101.openjudge.cn/practice/05443


*描述*

很久很久之前，森林里住着一群兔子。有一天，兔子们希望去赏樱花，但当他们到了上野公园门口却忘记了带地图。现在兔子们想求助于你来帮他们找到公园里的最短路。

*输入*

输入分为三个部分。

第一个部分有P+1行（P < 30），第一行为一个整数P，之后的P行表示上野公园的地点, 字符串长度不超过20。

第二个部分有Q+1行（Q < 50），第一行为一个整数Q，之后的Q行每行分别为两个字符串与一个整数，表示这两点有直线的道路，并显示二者之间的矩离（单位为米）。

第三个部分有R+1行（R < 20），第一行为一个整数R，之后的R行每行为两个字符串，表示需要求的路线。

*输出*

输出有R行，分别表示每个路线最短的走法。其中两个点之间，用->(矩离)->相隔。

*样例输入*

#align(center)[```
6
Ginza
Sensouji
Shinjukugyoen
Uenokouen
Yoyogikouen
Meijishinguu
6
Ginza Sensouji 80
Shinjukugyoen Sensouji 40
Ginza Uenokouen 35
Uenokouen Shinjukugyoen 85
Sensouji Meijishinguu 60
Meijishinguu Yoyogikouen 35
2
Uenokouen Yoyogikouen
Meijishinguu Meijishinguu```]

*样例输出*
#align(center)[
```
Uenokouen->(35)->Ginza->(80)->Sensouji->(60)->Meijishinguu->(35)->Yoyogikouen
Meijishinguu```]

== 直接上代码

#align(center)[
  ```cpp
  #include <iostream>
#include <string>
#include <vector>
#include <unordered_map>

using namespace std;

int main() {
    int place;
    cin >> place;

    vector<string> destination(place);
    unordered_map<string, int> id;

    for (int i = 0; i < place; i++) {
        cin >> destination[i];
        id[destination[i]] = i;
    }

    // -1 表示目前没有路线
    vector<vector<long long>> dist(
        place, vector<long long>(place, -1)
    );

    // 保存两点之间的直接道路长度
    vector<vector<long long>> roadLength(
        place, vector<long long>(place, 0)
    );

    // 保存最短路径的下一个地点
    vector<vector<int>> nextPlace(
        place, vector<int>(place, -1)
    );

    for (int i = 0; i < place; i++) {
        dist[i][i] = 0;
        nextPlace[i][i] = i;
    }

    int road_num;
    cin >> road_num;

    for (int i = 0; i < road_num; i++) {
        string start, end;
        long long length;

        cin >> start >> end >> length;

        int u = id[start];
        int v = id[end];

        // 如果没有保存过这条道路，或者新道路更短
        if (dist[u][v] == -1 || length < dist[u][v]) {
            dist[u][v] = length;
            dist[v][u] = length;

            roadLength[u][v] = length;
            roadLength[v][u] = length;

            nextPlace[u][v] = v;
            nextPlace[v][u] = u;
        }
    }

    // Floyd 算法
    for (int k = 0; k < place; k++) {
        for (int i = 0; i < place; i++) {
            for (int j = 0; j < place; j++) {
                // i 到 k 或者 k 到 j 没有路线
                if (dist[i][k] == -1 || dist[k][j] == -1) {
                    continue;
                }

                long long newDistance = dist[i][k] + dist[k][j];

                if (dist[i][j] == -1 || newDistance < dist[i][j]) {
                    dist[i][j] = newDistance;
                    nextPlace[i][j] = nextPlace[i][k];
                }
            }
        }
    }

    int check_num;
    cin >> check_num;

    for (int i = 0; i < check_num; i++) {
        string start, end;
        cin >> start >> end;

        int current = id[start];
        int target = id[end];

        if (current == target) {
            cout << start << '\n';
            continue;
        }

        if (nextPlace[current][target] == -1) {
            cout << "No path\n";
            continue;
        }
        cout << destination[current];
        while (current != target) {
            int next = nextPlace[current][target];
            cout << "->(" << roadLength[current][next] << ")->";
            cout << destination[next];
            current = next;
        }
        cout << '\n';
    }
    return 0;
}```
]

= 样例路径的恢复过程

样例从 Uenokouen 到 Yoyogikouen 有两条主要候选路线：经 Ginza、Sensouji、Meijishinguu 的长度为 $35+80+60+35=210$；经 Shinjukugyoen、Sensouji、Meijishinguu 的长度为 $85+40+60+35=220$。所以选第一条。

`nextPlace[u][v]` 存的是从 u 走向 v 的*第一跳*，并非这条路径的中间点 k。若更短路线改经 k，第一跳应继承 `nextPlace[u][k]`。样例恢复时，固定终点 Yoyogikouen，current 依次为 Uenokouen、Ginza、Sensouji、Meijishinguu、Yoyogikouen；每次查当前点到同一终点的第一跳。

#table(columns:(2fr,1fr,2fr),stroke:0.4pt,
[当前点],[本段原道路长度],[下一点],
[Uenokouen],[35],[Ginza], [Ginza],[80],[Sensouji],
[Sensouji],[60],[Meijishinguu], [Meijishinguu],[35],[Yoyogikouen])

输出箭头旁的数字来自 roadLength，因其表示相邻地点的实际道路长度；dist 保存剩余全程距离，若逐段输出 dist，就会把多个后续路段重复算入。起终点相同时路径只含该地点，长度零，不需要输出自环。

== 补充例：等长路线时如何记录

若 a→b→d 与 a→c→d 都长 10，程序仅在严格更短时更新，因而保留先发现的路线。距离答案仍唯一为 10，最短路径可以不唯一。若题目另要求字典序最小路线，就需要在等长时比较路径次序；仅把 `<` 换成 `<=` 并不能保证字典序。
