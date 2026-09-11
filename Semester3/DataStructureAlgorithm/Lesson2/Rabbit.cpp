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
}