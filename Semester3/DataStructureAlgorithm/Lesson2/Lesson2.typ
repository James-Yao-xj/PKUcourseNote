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







