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
#set text(size: 10.5pt)
#set par(justify: true, leading: 0.72em)
#show raw: set text(font: "Menlo", size: 8.5pt)
#let key(body) = [*#body*]
#let complexity(body) = [复杂度：#body]
#let explain(items) = {
  strong[代码说明]
  list(..items)
}

#align(center)[
  #text(size: 24pt, weight: "bold")[数据结构与算法A 第三讲]\
  #v(10pt)
  #text(size: 16pt)[_来源：2026年9月18日课程笔记_]
]

#v(1.5em)

本文整理抽象数据类型、算法复杂度、Floyd 最短路、线性表、栈与队列。正文强调定义、操作不变量、复杂度前提和代码实现。所有指针代码均在代码后解释地址含义和修改顺序。

#outline(title: [目录], depth: 2)

= 数据结构 算法与复杂度

== 逻辑结构与存储结构

数据结构需要区分三个层次：

- *逻辑结构*：描述结点集合以及结点之间的关系，不涉及地址和字节数。
- *存储结构*：描述逻辑结点和关系如何映射到内存。
- *运算*：描述允许对数据执行的操作及其结果。

逻辑结构可以写成 $B = (K, R)$。其中 $K$ 是有限结点集合，$R$ 是结点之间的关系。

#table(
  columns: (1.2fr, 2.6fr, 2.2fr),
  table.header([*类型*], [*关系约束*], [*常见对象*]),
  [线性结构], [每个结点至多一个直接前驱和一个直接后继], [线性表、栈、队列、串],
  [树形结构], [根没有前驱，其余结点恰有一个直接前驱], [二叉树、文件目录],
  [图结构], [直接前驱和直接后继的数量均不受限], [道路网络、依赖图],
)

四种常见存储方法如下。

- *顺序存储*：结点存放在连续地址中，以物理顺序表示逻辑顺序。支持 $O(1)$ 下标访问。
- *链接存储*：结点保存相邻结点的地址。已知相邻结点后修改链接是 $O(1)$，按位置定位通常是 $O(n)$。
- *索引存储*：额外建立关键码到地址的索引。索引占用额外空间，用于减少检索时读取的数据量。
- *散列存储*：散列函数把关键码转换为表中位置。平均效率依赖散列函数、装载因子和冲突处理方法。

== 抽象数据类型

抽象数据类型 ADT 可表示为 $(D, R, P)$：$D$ 是数据对象，$R$ 是数据关系，$P$ 是公开操作。ADT 规定接口和操作语义，不规定底层采用数组还是链表。

例如线性表 ADT 可以提供：

- `at(i)`：读取位置 $i$ 的元素；
- `find(x)`：查找内容为 $x$ 的元素；
- `insert(i, x)`：在位置 $i$ 插入；
- `remove(i)`：删除位置 $i$；
- `size()` 与 `empty()`：查询长度和空状态。

实现层必须遵守这些操作的契约。调用方不应依赖私有数组、结点或指针。

== 算法的性质

算法需要满足四项基本性质：

1. *通用性*：对所有满足输入约束的数据都能执行。
2. *有效性*：每条指令都能被明确执行。
3. *确定性*：每一步之后的下一步操作明确。
4. *有穷性*：执行在有限步内结束。

== 渐进复杂度

#table(
  columns: (1fr, 3fr, 2fr),
  table.header([*符号*], [*含义*], [*用途*]),
  [$O(g(n))$], [增长率不超过 $g(n)$ 的常数倍], [渐进上界],
  [Ω(g(n))], [增长率至少为 $g(n)$ 的常数倍], [渐进下界],
  [Θ(g(n))], [同时满足上界和下界], [确定同阶增长率],
)

分析规则：忽略常数和低阶项；连续代码的代价相加；嵌套循环的迭代次数相乘；递归需要写出递推关系。说明平均或摊还复杂度时必须写明前提。

#key[例 1：判断两个复杂度表达式]

$3n^2 + 10n + 7$ 是 Θ(n²)，因为 $n^2$ 是最高阶项。二分查找每轮把区间长度缩小一半，因此比较次数满足 $T(n) = T(n/2) + O(1)$，结果为 Θ(log n)。

= 图建模与 Floyd 最短路

== 问题建模

把对象表示为顶点，把可直接到达的关系表示为边，把耗时或距离表示为边权。若需要任意两个顶点之间的最短距离，应求全源最短路。

邻接矩阵 `dist[i][j]` 的初始化规则：

- `dist[i][i] = 0`；
- 存在从 $i$ 到 $j$ 的边时，取对应边权；
- 没有直接边时，设为 `INF`。

== Floyd 的状态与转移

第 $k$ 轮结束后，`dist[i][j]` 表示只允许编号不超过 $k$ 的顶点作为中间点时，$i$ 到 $j$ 的最短距离。转移为：

$"dist"[i][j] = min("dist"[i][j], "dist"[i][k] + "dist"[k][j])$

#key[例 2：Floyd 全源最短路]

```cpp
const long long INF = 4e18;

vector<vector<long long>> floyd(vector<vector<long long>> dist) {
    int n = static_cast<int>(dist.size());
    for (int k = 0; k < n; ++k) {
        for (int i = 0; i < n; ++i) {
            if (dist[i][k] == INF) continue;
            for (int j = 0; j < n; ++j) {
                if (dist[k][j] == INF) continue;
                dist[i][j] = min(dist[i][j], dist[i][k] + dist[k][j]);
            }
        }
    }
    return dist;
}
```

#explain((
  [`dist` 按值传入，函数修改的是距离矩阵副本，并返回最终结果。],
  [`static_cast<int>` 是显式类型转换，避免 `size_t` 与 `int` 在比较时产生符号差异。],
  [最外层必须枚举中间点 `k`。交换三层循环会破坏状态定义。],
  [两处 `INF` 判断保证不可达路径不参与加法，并避免大数相加造成溢出。],
  [`dist[i][k] + dist[k][j]` 表示一条经过 `k` 的候选路径。],
))

#complexity[时间 Θ(n³)，空间 Θ(n²)。]

#key[例 3：选择使最远距离最小的起点]

```cpp
pair<int, long long> best_source(const vector<vector<long long>>& dist) {
    int best = -1;
    long long answer = INF;
    for (int i = 0; i < static_cast<int>(dist.size()); ++i) {
        long long latest = 0;
        bool reaches_all = true;
        for (long long value : dist[i]) {
            if (value == INF) reaches_all = false;
            else latest = max(latest, value);
        }
        if (reaches_all && latest < answer) {
            best = i;
            answer = latest;
        }
    }
    return {best, answer};
}
```

#explain((
  [`const vector<...>& dist` 以只读引用接收矩阵，避免复制二维数组。],
  [`latest` 保存从当前起点到所有可达顶点的最大距离。],
  [`reaches_all` 保证不可达起点不会参与最优解比较。],
  [`return {best, answer}` 使用列表初始化构造 `pair`。],
))

若问题要求所有顶点都接收到信息，则完成时间取所有目标距离的最大值；全局答案再对起点取最小值。

= 线性表与顺序表

== 线性表定义

线性表是有限有序序列 $K = {k_0, k_1, ..., k_(n-1)}$。每个结点至多有一个直接前驱和一个直接后继。长度为零时是空表。

#table(
  columns: (2.2fr, 2fr, 2.3fr),
  table.header([*操作*], [*顺序表*], [*带尾指针单链表*]),
  [按下标读取], [$O(1)$], [$O(n)$],
  [按内容查找], [$O(n)$], [$O(n)$],
  [已知前驱后插入或删除], [$O(n)$，需要移动], [$O(1)$，修改链接],
  [仅给位置的插入或删除], [$O(n)$], [$O(n)$，需要先定位],
  [表尾追加], [摊还 $O(1)$], [$O(1)$],
)

== 顺序表的地址与容量

若首地址为 $b$，每个元素占 $L$ 个存储单元，则第 $i$ 个元素的地址为：

$"loc"(k_i) = b + i times L$

因此按下标访问是 $O(1)$。`size_` 表示当前元素数，`capacity_` 表示已申请数组能够容纳的元素数。

#key[例 4：顺序表按内容查找]

```cpp
optional<size_t> find(const T& value) const {
    for (size_t i = 0; i < size_; ++i) {
        if (data_[i] == value) return i;
    }
    return nullopt;
}
```

#explain((
  [`const T& value` 以只读引用接收待查元素，避免复制大型对象。],
  [`optional<size_t>` 同时表示“找到并返回下标”和“没有找到”。],
  [`data_[i]` 等价于访问地址 `data_ + i` 所指的元素。],
  [`nullopt` 是正常的未找到结果，不表示程序异常。],
))

#complexity[最好 $O(1)$，最坏和平均均为 $O(n)$。]

#key[例 5：顺序表插入]

```cpp
void insert(size_t pos, const T& value) {
    if (pos > size_) throw out_of_range("invalid position");
    if (size_ == capacity_) grow();
    for (size_t i = size_; i > pos; --i) {
        data_[i] = data_[i - 1];
    }
    data_[pos] = value;
    ++size_;
}
```

#explain((
  [`pos == size_` 表示在表尾追加，因此是合法位置。],
  [扩容必须发生在右移之前，否则 `data_[size_]` 没有可写空间。],
  [右移必须从后向前。若从前向后移动，尚未读取的元素会先被覆盖。],
  [`data_[i] = data_[i - 1]` 把一个元素复制到右侧相邻位置。],
))

#complexity[插入表尾且无需扩容时为 $O(1)$；一般情况为 $O(n)$。]

#key[例 6：翻倍扩容]

```cpp
void grow() {
    size_t next_capacity = capacity_ == 0 ? 1 : capacity_ * 2;
    T* fresh = new T[next_capacity];
    for (size_t i = 0; i < size_; ++i) {
        fresh[i] = data_[i];
    }
    delete[] data_;
    data_ = fresh;
    capacity_ = next_capacity;
}
```

#explain((
  [`T* fresh` 保存新数组首元素的地址。],
  [`new T[next_capacity]` 申请连续数组，必须与 `delete[]` 配对。],
  [复制完成前旧数组仍需保持有效，因此不能提前执行 `delete[] data_`。],
  [`data_ = fresh` 让成员指针保存新数组地址。此后旧地址已经失效。],
  [容量翻倍时，从空表增加到 $n$ 个元素的总搬运次数小于 $2n$。],
))

#complexity[单次扩容为 $O(n)$；尾插的摊还复杂度为 $O(1)$。]

== 三法则与深拷贝

类拥有裸指针所指的资源时，默认拷贝只复制地址。两个对象会指向同一数组，并在析构时重复释放。需要实现析构函数、拷贝构造和拷贝赋值，或者明确禁止复制。

#key[例 7：拷贝赋值]

```cpp
ArrayList& operator=(const ArrayList& other) {
    if (this == &other) return *this;
    T* fresh = new T[other.capacity_];
    for (size_t i = 0; i < other.size_; ++i) {
        fresh[i] = other.data_[i];
    }
    delete[] data_;
    data_ = fresh;
    capacity_ = other.capacity_;
    size_ = other.size_;
    return *this;
}
```

#explain((
  [`this` 是当前对象的地址；`&other` 是源对象地址。相等时表示自赋值。],
  [先申请并复制新数组，再释放旧数组。若申请失败，当前对象仍保持原状态。],
  [`other.data_[i]` 读取源对象数组；`fresh[i]` 写入独立的新数组。],
  [`return *this` 对当前对象地址解引用并返回当前对象引用。],
))

= 链表与指针操作

== 单链表结构

单链表结点保存数据和后继结点地址。带头结点的实现中，`head_` 指向不存真实数据的结点；空表时 `tail_ == head_`。

#key[例 8：查找指定位置的前驱]

```cpp
Node* predecessor_at(size_t pos) const {
    Node* predecessor = head_;
    for (size_t i = 0; i < pos; ++i) {
        predecessor = predecessor->next;
    }
    return predecessor;
}
```

#explain((
  [`Node* predecessor` 保存某个结点的地址，不复制结点。],
  [从头结点开始，因此位置 0 的前驱就是 `head_`。],
  [`predecessor->next` 读取当前结点中保存的后继地址。],
  [返回的是前驱地址，调用者可以通过该地址修改链接。],
))

#key[例 9：在已知前驱后插入]

```cpp
void insert_after(Node* predecessor, const T& value) {
    Node* fresh = new Node{value, predecessor->next};
    predecessor->next = fresh;
    if (predecessor == tail_) tail_ = fresh;
    ++size_;
}
```

#explain((
  [`predecessor` 必须指向当前链表中的有效结点。],
  [`new Node{value, predecessor->next}` 创建新结点，并先保存原后继地址。],
  [`predecessor->next = fresh` 再让前驱指向新结点。两句顺序不能交换。],
  [若前驱原来是尾结点，新结点成为新的尾结点。],
))

#complexity[已知前驱时为 $O(1)$；若只给位置，定位前驱需要 $O(n)$。]

#key[例 10：删除结点并释放内存]

```cpp
T remove_after(Node* predecessor) {
    Node* dying = predecessor->next;
    predecessor->next = dying->next;
    if (dying == tail_) tail_ = predecessor;
    T value = dying->value;
    delete dying;
    --size_;
    return value;
}
```

#explain((
  [`dying` 保存待删除结点地址。调用前必须保证 `predecessor->next` 非空。],
  [`predecessor->next = dying->next` 让前驱跳过待删结点。],
  [删除尾结点时，尾指针必须改为前驱地址。],
  [必须在 `delete dying` 前读取元素值；释放后不能再访问 `dying->value` 或 `dying->next`。],
))

#key[例 11：循环清空链表]

```cpp
void clear() {
    Node* current = head_->next;
    while (current != nullptr) {
        Node* dying = current;
        current = current->next;
        delete dying;
    }
    head_->next = nullptr;
    tail_ = head_;
    size_ = 0;
}
```

#explain((
  [`current = current->next` 必须在 `delete dying` 前执行。],
  [每轮释放一个真实结点，头结点在此函数中保留。],
  [清空后同时恢复 `head_->next`、`tail_` 和 `size_` 三个状态。],
  [循环实现使用 $O(1)$ 额外空间；递归释放会消耗与链长成正比的运行栈。],
))

== 双链表与循环链表

双链表结点同时保存 `prev` 和 `next`。已知结点地址时，可以在 $O(1)$ 时间删除该结点。

#key[例 12：从双链表摘除已知结点]

```cpp
void detach(Node* node) {
    node->prev->next = node->next;
    node->next->prev = node->prev;
}
```

#explain((
  [`node->prev` 和 `node->next` 分别是前驱和后继地址。],
  [第一句修改前驱的后继地址，第二句修改后继的前驱地址。],
  [使用首尾哨兵时，每个真实结点都有前驱和后继，这两句不需要空指针分支。],
  [该函数只摘链，不释放 `node`；是否释放由调用方决定。],
))

循环链表的尾结点 `next` 指回首结点，因此遍历不能以 `nullptr` 为终止条件。遍历前保存起点，指针再次等于起点时结束。

= 链表代码题

== 反转链表

#key[例 13：迭代反转单链表]

```cpp
ListNode* reverse_list(ListNode* head) {
    ListNode* previous = nullptr;
    ListNode* current = head;
    while (current != nullptr) {
        ListNode* next = current->next;
        current->next = previous;
        previous = current;
        current = next;
    }
    return previous;
}
```

#explain((
  [`previous` 保存已反转部分的首结点地址，初始为空。],
  [`current` 保存尚未处理部分的首结点地址。],
  [修改 `current->next` 前，必须用 `next` 保存原后继地址。],
  [`current->next = previous` 改变当前结点的后继地址。],
  [循环结束时 `current == nullptr`，`previous` 指向新表头。],
))

#complexity[时间 $O(n)$，额外空间 $O(1)$。]

== 相交链表

两个单链表相交是指它们从某个位置开始共享同一批结点地址。相同的元素值不能证明相交。

#key[例 14：双指针查找交点]

```cpp
ListNode* intersection(ListNode* head_a, ListNode* head_b) {
    ListNode* a = head_a;
    ListNode* b = head_b;
    while (a != b) {
        a = (a == nullptr) ? head_b : a->next;
        b = (b == nullptr) ? head_a : b->next;
    }
    return a;
}
```

#explain((
  [`a != b` 比较地址。两个地址相等时，二者指向同一结点。],
  [指针走到 `nullptr` 后切换到另一条链的表头。],
  [每个指针依次走过 A 和 B，消除两条链独有部分的长度差。],
  [若不相交，两个指针最终同时为 `nullptr`，返回空地址。],
))

#complexity[时间 $O(m+n)$，额外空间 $O(1)$。]

== 合并两个有序链表

#key[例 15：哨兵和尾指针]

```cpp
ListNode* merge_sorted(ListNode* a, ListNode* b) {
    ListNode dummy(0);
    ListNode* tail = &dummy;
    while (a != nullptr && b != nullptr) {
        if (a->val <= b->val) {
            tail->next = a;
            a = a->next;
        } else {
            tail->next = b;
            b = b->next;
        }
        tail = tail->next;
    }
    tail->next = (a != nullptr) ? a : b;
    return dummy.next;
}
```

#explain((
  [`dummy` 是局部对象；`&dummy` 取得其地址，不需要动态分配。],
  [`tail` 始终指向结果链表的最后一个结点。],
  [接入 `a` 或 `b` 后，先推进对应输入指针，再推进 `tail`。],
  [一条链结束后，另一条链的剩余部分已经有序，可以整体接入。],
  [返回 `dummy.next`，因为 `dummy` 本身不属于结果。],
))

== 回文链表

#key[例 16：快慢指针加局部反转]

```cpp
bool is_palindrome(ListNode* head) {
    ListNode* slow = head;
    ListNode* fast = head;
    while (fast != nullptr && fast->next != nullptr) {
        slow = slow->next;
        fast = fast->next->next;
    }
    ListNode* right = reverse_list(slow);
    for (ListNode* left = head; right != nullptr;
         left = left->next, right = right->next) {
        if (left->val != right->val) return false;
    }
    return true;
}
```

#explain((
  [`fast->next->next` 每轮前进两步；循环条件先保证 `fast` 和 `fast->next` 有效。],
  [循环结束时 `slow` 位于后半部分起点。],
  [`reverse_list(slow)` 返回后半部分反转后的表头地址。],
  [for 循环的更新部分同时推进两个地址变量。],
  [若题目要求恢复原链表，需要保存反转部分表头，并在比较后再次反转。],
))

= 栈

== ADT 与存储实现

栈只允许在栈顶插入和删除，遵循后进先出。基本操作 `push`、`pop`、`top` 应为 $O(1)$。

- 顺序栈把数组末端设为栈顶。`size_` 既是元素数，也是下一个空槽下标。
- 链式栈把链表首结点设为栈顶。压栈在链头插入，弹栈删除链头。

#key[例 17：链式栈]

```cpp
void push(const T& value) {
    Node* fresh = new Node{value, top_};
    top_ = fresh;
    ++size_;
}

optional<T> pop() {
    if (top_ == nullptr) return nullopt;
    Node* dying = top_;
    T value = dying->value;
    top_ = dying->next;
    delete dying;
    --size_;
    return value;
}
```

#explain((
  [`new Node{value, top_}` 创建结点，并让其后继地址等于原栈顶地址。],
  [`top_ = fresh` 更新栈顶地址。压栈不需要遍历。],
  [弹栈时先保存旧栈顶地址和元素值，再更新 `top_`。],
  [`delete dying` 释放旧栈顶；释放后不能再访问该结点。],
  [`optional<T>` 表示空栈时没有可返回元素。],
))

== 后缀表达式求值

扫描后缀表达式：操作数入栈；遇到二元运算符时，先弹出右操作数，再弹出左操作数，计算后把结果入栈。

#key[例 18：计算后缀表达式]

```python
def evaluate_postfix(tokens):
    stack = []
    for token in tokens:
        if token not in "+-*/":
            stack.append(float(token))
            continue
        right = stack.pop()
        left = stack.pop()
        if token == "+":
            stack.append(left + right)
        elif token == "-":
            stack.append(left - right)
        elif token == "*":
            stack.append(left * right)
        else:
            stack.append(left / right)
    return stack.pop()
```

#explain((
  [`stack.pop()` 删除并返回 Python 列表的最后一个元素，对应栈顶。],
  [先弹出的元素是右操作数，后弹出的是左操作数。减法和除法不能交换。],
  [`continue` 直接开始下一次循环，避免操作数进入运算符分支。],
  [合法表达式扫描结束后应只剩一个结果；完整实现可检查最终栈长度。],
))

== 中缀转后缀

从左到右扫描中缀表达式：

1. 数字直接输出。
2. 左括号压入运算符栈。
3. 右括号使栈顶运算符依次输出，直到遇到左括号；左右括号均不输出。
4. 当前运算符入栈前，先弹出优先级不低于它的栈顶运算符。
5. 扫描结束后输出栈中剩余运算符。

同优先级的 `+ - * /` 左结合，因此条件必须包含“优先级相等”。例如 `1 - 2 - 3` 应转换为 `1 2 - 3 -`。

== 递归与显式栈

每次函数调用都会在运行栈上建立栈帧，保存返回地址、参数、局部变量和寄存器状态。递归深度过大时会耗尽运行栈。将递归改为显式栈时，每个显式栈元素必须保存恢复计算所需的状态以及返回后继续执行的位置。

#key[例 19：显式栈实现深度优先遍历]

```cpp
vector<int> dfs(const vector<vector<int>>& graph, int start) {
    vector<int> order;
    vector<bool> visited(graph.size(), false);
    vector<int> stack{start};
    while (!stack.empty()) {
        int node = stack.back();
        stack.pop_back();
        if (visited[node]) continue;
        visited[node] = true;
        order.push_back(node);
        for (auto it = graph[node].rbegin(); it != graph[node].rend(); ++it) {
            if (!visited[*it]) stack.push_back(*it);
        }
    }
    return order;
}
```

#explain((
  [`const ...& graph` 以只读引用接收邻接表，避免复制整个图。],
  [`stack.back()` 读取栈顶，`pop_back()` 删除栈顶。],
  [结点可能由多个邻接点重复入栈，因此出栈后再次检查 `visited`。],
  [`rbegin()` 和 `rend()` 是反向迭代器。逆序压栈可使访问顺序与递归版本一致。],
  [`*it` 对迭代器解引用，得到邻接顶点编号。],
))

= 队列

== 循环队列

队列在队尾入队，在队头出队，遵循先进先出。普通顺序队列若只让下标向右移动，会产生假溢出。循环队列用取模使下标返回数组起点。

若只保存 `front_` 和 `rear_`，可以牺牲一个槽位区分空和满：

- 空：`front_ == rear_`；
- 满：`(rear_ + 1) % slots_ == front_`；
- `front_` 指向队头元素；
- `rear_` 指向下一个可写位置。

#key[例 20：固定容量循环队列]

```cpp
bool enqueue(const T& value) {
    if ((rear_ + 1) % slots_ == front_) return false;
    data_[rear_] = value;
    rear_ = (rear_ + 1) % slots_;
    return true;
}

optional<T> dequeue() {
    if (front_ == rear_) return nullopt;
    T value = data_[front_];
    front_ = (front_ + 1) % slots_;
    return value;
}
```

#explain((
  [`(rear_ + 1) % slots_` 计算环上的下一个下标。],
  [入队先写 `data_[rear_]`，再推进 `rear_`。],
  [出队先读取 `data_[front_]`，再推进 `front_`。],
  [逻辑容量为 $n$ 时，底层数组需要 $n+1$ 个槽位。],
  [固定容量队列已满是可预期状态，因此返回 `false`。],
))

== 链式队列

链式队列的 `front_` 指向队首结点，`rear_` 指向队尾结点。尾指针使入队不需要遍历。

#key[例 21：链式队列]

```cpp
void enqueue(const T& value) {
    Node* fresh = new Node{value, nullptr};
    if (rear_ == nullptr) {
        front_ = rear_ = fresh;
    } else {
        rear_->next = fresh;
        rear_ = fresh;
    }
    ++size_;
}

optional<T> dequeue() {
    if (front_ == nullptr) return nullopt;
    Node* dying = front_;
    T value = dying->value;
    front_ = dying->next;
    if (front_ == nullptr) rear_ = nullptr;
    delete dying;
    --size_;
    return value;
}
```

#explain((
  [`fresh` 指向新申请的结点，新结点的 `next` 初始化为空。],
  [空队列中，新结点同时是队首和队尾，因此两个指针保存同一地址。],
  [非空队列先让旧队尾指向新结点，再更新 `rear_`。],
  [删除唯一结点后 `front_` 变为空，必须同步把 `rear_` 置空。],
  [若漏掉 `rear_ = nullptr`，下一次入队会通过已释放地址写入。],
))

== 用队列实现 BFS

#key[例 22：无权图最短路]

```cpp
vector<int> bfs_distance(const vector<vector<int>>& graph, int source) {
    vector<int> distance(graph.size(), -1);
    queue<int> pending;
    distance[source] = 0;
    pending.push(source);
    while (!pending.empty()) {
        int node = pending.front();
        pending.pop();
        for (int next : graph[node]) {
            if (distance[next] != -1) continue;
            distance[next] = distance[node] + 1;
            pending.push(next);
        }
    }
    return distance;
}
```

#explain((
  [`distance == -1` 同时表示尚未访问；第一次设置的距离就是无权图最短距离。],
  [`queue<int> pending` 按先进先出顺序保存待处理顶点。],
  [`pending.front()` 读取队首，`pending.pop()` 删除队首。],
  [范围 for 循环 `for (int next : graph[node])` 依次读取当前顶点的邻接点。],
))

#complexity[邻接表表示下，时间 $O(V+E)$，空间 $O(V)$。]

= 综合题与复习检查

== 判断出栈序列

输入序列固定为 $1, 2, ..., n$，给定一个目标出栈序列。依次处理每个目标值：若栈顶不是目标，就继续压入尚未入栈的数；若所有数都已入栈而栈顶仍不匹配，则目标序列不合法。

#key[例 23：出栈序列判定]

```cpp
bool valid_pop_order(const vector<int>& order) {
    vector<int> stack;
    int next = 1;
    for (int wanted : order) {
        while ((stack.empty() || stack.back() != wanted)
               && next <= static_cast<int>(order.size())) {
            stack.push_back(next++);
        }
        if (stack.empty() || stack.back() != wanted) return false;
        stack.pop_back();
    }
    return true;
}
```

#explain((
  [`stack.back()` 访问用 `vector` 模拟的栈顶。],
  [`next++` 先取得当前待入栈编号，再把编号加一。],
  [while 条件表示只要目标不在栈顶且仍有元素可入栈，就继续压栈。],
  [循环结束后仍不匹配，说明目标值已被其他元素压在下面或输入非法。],
))

#complexity[每个元素最多入栈和出栈各一次，时间 $O(n)$，空间 $O(n)$。]

== 结构选择

#table(
  columns: (2.5fr, 1.8fr, 2.5fr),
  table.header([*需求*], [*结构*], [*原因*]),
  [频繁按下标访问], [顺序表], [地址可直接计算],
  [已知结点后频繁插删], [链表或双链表], [只修改常数条链接],
  [最后进入的任务先处理], [栈], [栈顶进出均为 $O(1)$],
  [先到的任务先处理], [队列], [队首出队、队尾入队],
  [按键查找并维护最近使用次序], [哈希表加双链表], [查找和移动平均 $O(1)$],
  [规模较小的全源最短路], [Floyd], [状态转移直接，时间 Θ(n³)],
)

== 提交前检查

- 顺序表插入是否从后向前移动；扩容是否先复制再释放。
- 每个 `new[]` 是否对应 `delete[]`；每个 `new` 是否对应一次 `delete`。
- 拥有裸指针资源的类是否实现或禁用了复制。
- 链表修改 `next` 前是否保存了后继地址。
- 删除尾结点、唯一结点或队列最后一个结点后，尾指针是否同步更新。
- 循环队列推进下标时是否取模；空和满是否能区分。
- 后缀表达式是否先弹右操作数，再弹左操作数。
- Floyd 的最外层是否枚举中间点；`INF` 是否避免参与加法。
- 所有代码是否至少测试空结构、单元素结构和多元素结构。
