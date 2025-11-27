#import "knowledge-tree-module.typ": draw-knowledge-tree
#import "@preview/typewind:0.1.0" as tw
#set page(width: auto, height: auto, margin: 80pt, fill: tw.gray-50)
// Modern color scheme
#let colors = (
  data-structure: tw.indigo-500,
  search: tw.blue-500,
  dp: tw.cyan-500,
  string: tw.amber-500,
  graph: tw.emerald-500,
  misc: tw.yellow-500,
  geometry: tw.lime-500,
  math: tw.red-500,
)

// ==================== 数据结构模块 ====================
#let data-structures1 = (
  title: "数据结构",
  color: colors.data-structure,
  children: (
    (title: "栈"),
    (title: "队列"),
    (title: "链表"),
    (title: "哈希表"),
    (title: "并查集"),
    (
      title: "堆",
      children: (
        (title: "二叉堆"),
        (title: "配对堆"),
        (title: "左偏树"),
      ),
    ),
    (
      title: "块状数据结构",
      children: (
        (title: "分块思想"),
        (title: "块状数组"),
        (title: "块状链表"),
        (title: "树分块"),
        (title: "Sqrt Tree"),
      ),
    ),
    (title: "单调栈"),
    (title: "单调队列"),
    (title: "ST 表"),
    (title: "树状数组"),
    (
      title: "线段树",
      children: (
        (title: "线段树合并、分裂"),
        (title: "李超线段树"),
        (title: "猫树"),
        (title: "区间最值操作、区间历史最值"),
      ),
    ),
    (title: "划分树"),
    (
      title: "二叉搜索树、平衡树",
      children: (
        (title: "Treap"),
        (title: "Splay 树"),
        (title: "WBLT"),
        (title: "替罪羊树"),
        (title: "笛卡尔树"),
        (title: "Size Balanced Tree"),
        (title: "AVL 树"),
        (title: "红黑树"),
        (title: "左偏红黑树"),
        (title: "AA 树"),
      ),
    ),
    (title: "跳表"),
    (title: "析合树"),
    (title: "PQ 树"),
  ),
)

#let data-structures2 = (
  title: "数据结构",
  color: colors.data-structure,
  children: (
    (
      title: "可持久化数据结构",
      children: (
        (title: "可持久化线段树"),
        (title: "可持久化块状数组"),
        (title: "可持久化平衡树"),
        (title: "可持久化字典树"),
        (title: "可持久化可并堆"),
      ),
    ),
    (
      title: "树套树",
      children: (
        (title: "线段树套线段树"),
        (title: "平衡树套线段树"),
        (title: "线段树套平衡树"),
        (title: "树状数组套权值线段树"),
        (title: "分块套树状数组"),
      ),
    ),
    (title: "K-D Tree"),
    (
      title: "动态树",
      children: (
        (title: "Link Cut Tree"),
        (title: "全局平衡二叉树"),
        (title: "Euler Tour Tree"),
        (title: "Top Tree"),
      ),
    ),
    (title: "手指树"),
    (title: "霍夫曼树"),
  ),
)

// ==================== 搜索模块 ====================
#let search-algorithms = (
  title: "搜索",
  color: colors.search,
  children: (
    (
      title: "常见搜索",
      children: (
        (title: "BFS"),
        (title: "DFS"),
        (title: "双向搜索"),
        (title: "迭代加深搜索"),
      ),
    ),
    (
      title: "搜索优化",
      children: (
        (title: "IDA*"),
        (title: "Alpha-beta剪枝"),
      ),
    ),
    (
      title: "搜索剪枝",
      children: (
        (title: "记忆化剪枝"),
        (title: "最优性剪枝"),
        (title: "可行性剪枝"),
      ),
    ),
    (
      title: "其他搜索",
      children: (
        (title: "启发式搜索"),
        (title: "A*"),
        (title: "DLX"),
      ),
    ),
  ),
)

// ==================== 动态规划模块 ====================
#let dynamic-programming = (
  title: "动态规划",
  color: colors.dp,
  children: (
    (
      title: "基础DP类型",
      children: (
        (title: "背包DP"),
        (title: "区间DP"),
        (title: "DAG上DP"),
        (title: "树形DP"),
        (title: "状压DP"),
        (title: "数位DP"),
        (title: "插头DP"),
        (title: "计数DP"),
        (title: "动态DP"),
        (title: "概率期望DP"),
        (title: "DP套DP"),
      ),
    ),
    (
      title: "DP优化",
      children: (
        (title: "单调队列/单调栈"),
        (title: "斜率优化"),
        (title: "四边形不等式"),
        (title: "slope trick"),
        (title: "WQS二分"),
        (title: "状态设计优化"),
      ),
    ),
  ),
)

// ==================== 字符串模块 ====================
#let string-algorithms = (
  title: "字符串",
  color: colors.string,
  children: (
    (title: "字符串基础"),
    (title: "字符串匹配"),
    (title: "字符串哈希"),
    (title: "字典树trie"),
    (title: "前缀函数和KMP"),
    (title: "Boyer-Moore"),
    (title: "扩展KMP/Z函数"),
    (title: "AC自动机"),
    (title: "后缀数组"),
    (
      title: "后缀自动机",
      children: (
        (title: "一般形式"),
        (title: "广义后缀自动机"),
      ),
    ),
    (title: "后缀平衡树"),
    (title: "后缀树"),
    (title: "Manacher"),
    (title: "回文树"),
    (title: "序列自动机"),
    (title: "最小表示法"),
    (title: "Lyndon分解"),
    (title: "Main-Lorentz算法"),
  ),
)

// ==================== 图论模块 ====================
#let graph-theory1 = (
  title: "图论",
  color: colors.graph,
  children: (
    (
      title: "树论",
      children: (
        (title: "树基础"),
        (title: "树的直径、中心、重心"),
        (
          title: "生成树问题",
          children: (
            (title: "最小生成树"),
            (title: "最小树图"),
            (title: "最小直径生成树"),
          ),
        ),
        (title: "LCA(最近公共祖先)"),
        (title: "树链剖分"),
        (title: "树上启发式合并"),
        (title: "虚树"),
        (
          title: "树分治",
          children: (
            (title: "一般形式"),
            (title: "动态树分治"),
          ),
        ),
        (title: "AHU算法"),
        (title: "树哈希"),
        (title: "树上随机游走"),
        (title: "斯坦纳树"),
      ),
    ),
    (
      title: "网络流",
      children: (
        (title: "最大流"),
        (title: "最小割"),
        (title: "费用流"),
        (title: "上下界网络流"),
        (title: "Stoer-Wagner算法"),
      ),
    ),
    (
      title: "图的匹配",
      children: (
        (title: "图匹配"),
        (title: "二分图最大匹配"),
        (title: "二分图最大权匹配"),
        (title: "一般图最大匹配"),
        (title: "一般图最大权匹配"),
        (title: "稳定匹配"),
      ),
    ),
    (
      title: "其他图论知识",
      children: (
        (title: "Prüfer序列"),
        (title: "矩阵树定理"),
        (title: "LGV引理"),
        (title: "最大团搜索算法"),
        (title: "支配树"),
        (title: "图上随机游走"),
      ),
    ),
  ),
)

#let graph-theory2 = (
  title: "图论",
  color: colors.graph,
  children: (
    (
      title: "基础图论问题",
      children: (
        (title: "拓扑排序"),
        (
          title: "最短路",
          children: (
            (title: "一般最短路问题"),
            (title: "差分约束"),
            (title: "k短路"),
            (title: "同余最短路"),
          ),
        ),
        (title: "拆点"),
        (
          title: "连通性相关",
          children: (
            (title: "强连通分量"),
            (title: "双连通分量"),
            (title: "割点和桥"),
            (title: "圆方树"),
            (title: "点/边连通度"),
          ),
        ),
        (title: "环计数问题"),
        (title: "2-SAT"),
        (title: "欧拉图"),
        (title: "哈密顿图"),
        (title: "二分图"),
        (title: "平面图"),
        (title: "弦图"),
        (title: "图的着色"),
      ),
    ),
  ),
)

// ==================== 杂项模块 ====================
#let miscellaneous = (
  title: "杂项",
  color: colors.misc,
  children: (
    (title: "离散化"),
    (title: "双指针"),
    (
      title: "离线算法",
      children: (
        (title: "CDQ分治"),
        (title: "整体二分"),
        (
          title: "莫队算法",
          children: (
            (title: "一般形式"),
            (title: "带修改莫队"),
            (title: "树上莫队"),
            (title: "回滚莫队"),
            (title: "二维莫队"),
            (title: "莫队二次离线"),
            (title: "莫队配合bitset"),
          ),
        ),
      ),
    ),
    (title: "分数规划"),
    (
      title: "随机化",
      children: (
        (title: "随机函数"),
        (title: "随机化技巧"),
        (title: "爬山算法"),
        (title: "模拟退火"),
      ),
    ),
    (title: "悬线法"),
    (title: "有限状态自动机"),
    (title: "计算理论基础"),
    (title: "字节顺序"),
    (title: "约瑟夫问题"),
    (title: "格雷码"),
    (title: "表达式求值"),
    (title: "在一台机器上规划任务"),
    (title: "主元素问题"),
    (title: "Garsia–Wachs 算法"),
    (title: "15-puzzle"),
    (title: "Kahan 求和"),
    (title: "珂朵莉树/颜色段均摊"),
    (title: "空间优化"),
  ),
)

// ==================== 计算几何模块 ====================
#let computational-geometry = (
  title: "计算几何",
  color: colors.geometry,
  children: (
    (title: "二维计算几何"),
    (title: "三维计算几何"),
    (title: "距离"),
    (title: "Pick定理"),
    (title: "三角剖分"),
    (title: "凸包"),
    (title: "扫描线"),
    (title: "旋转卡壳"),
    (title: "半平面交"),
    (title: "平面最近点对"),
    (title: "随机增量法"),
    (title: "反演变换"),
    (title: "计算几何杂项"),
  ),
)

// ==================== 数学模块 ====================
#let mathematics0 = (
  title: "数学",
  color: colors.math,
  children: (
    (
      title: "数学基础知识",
      children: (
        (title: "进位制"),
        (title: "位运算"),
        (title: "二进制集合操作"),
        (title: "平衡三进制"),
        (title: "弧度制和坐标系"),
        (title: "复数"),
      ),
    ),
    (
      title: "常规算法",
      children: (
        (title: "高精度"),
        (title: "快速幂"),
        (title: "置换和全排列"),
      ),
    ),
    (
      title: "线性规划",
      children: (
        (title: "线性规划基础"),
        (title: "单纯形法"),
      ),
    ),
    (
      title: "抽象代数",
      children: (
        (title: "群论"),
        (title: "环论"),
        (title: "域论"),
        (title: "Schreier–Sims 算法"),
      ),
    ),
  ),
)
#let mathematics1 = (
  title: "数学",
  color: colors.math,
  children: (
    (
      title: "概率论",
      children: (
        (title: "条件概率与独立性"),
        (title: "随机变量"),
        (title: "概率不等式"),
      ),
    ),
    (
      title: "线性代数",
      children: (
        (title: "向量、内积和外积"),
        (title: "矩阵"),
        (title: "初等变换"),
        (title: "行列式"),
        (title: "线性空间"),
        (title: "线性基"),
        (title: "线性映射"),
        (title: "特征多项式"),
        (title: "特征值"),
        (title: "对角化"),
        (title: "Jordan标准型"),
      ),
    ),
    (
      title: "博弈论",
      children: (
        (title: "博弈论基础"),
        (title: "公平组合游戏"),
        (title: "零和游戏"),
        (title: "非公平组合游戏"),
      ),
    ),
    (
      title: "数值算法",
      children: (
        (title: "插值"),
        (title: "数值积分"),
        (title: "数值微分"),
        (title: "高斯消元"),
        (title: "牛顿迭代"),
      ),
    ),
    (
      title: "其他数学知识",
      children: (
        (title: "序理论"),
        (title: "杨氏矩阵"),
        (title: "拟阵"),
        (title: "Berlekamp-Massey算法"),
      ),
    ),
  ),
)
#let mathematics2 = (
  title: "数学",
  color: colors.math,
  children: (
    (
      title: "数论",
      children: (
        (title: "数论基础"),
        (title: "模算术"),
        (title: "素数"),
        (title: "最大公约数"),
        (title: "欧拉函数"),
        (title: "筛法"),
        (title: "分解质因数"),
        (title: "裴蜀定理、一次不定方程"),
        (title: "费马小定理、欧拉定理"),
        (title: "模逆元"),
        (title: "线性同余方程"),
        (title: "中国剩余定理"),
        (title: "升幂引理"),
        (title: "阶乘取模"),
        (title: "卢卡斯定理"),
        (title: "同余方程"),
        (title: "二次剩余"),
        (title: "阶、原根"),
        (title: "离散对数"),
        (title: "高次剩余、单位根"),
        (title: "数论分块"),
        (title: "狄利克雷卷积"),
        (title: "莫比乌斯反演"),
        (title: "杜教筛"),
        (title: "powerful number筛"),
        (title: "Min_25筛"),
        (title: "洲阁筛"),
        (title: "类欧几里得算法"),
        (title: "Meissel-Lehmer算法"),
        (title: "连分数"),
        (title: "Stern-Brocot树与Farey序列"),
        (title: "二次域"),
        (title: "Pell方程"),
      ),
    ),
  ),
)

#let mathematics3 = (
  title: "数学",
  color: colors.math,
  children: (
    (
      title: "多项式与生成函数",
      children: (
        (title: "代数基本定理"),
        (title: "快速傅里叶变换"),
        (title: "快速数论变换"),
        (title: "快速沃尔什变换"),
        (title: "Chirp Z变换"),
        (title: "多项式牛顿迭代"),
        (title: "多项式多点求值、快速插值"),
        (title: "多项式初等函数"),
        (title: "常系数齐次线性递推"),
        (title: "多项式平移、连续点值平移"),
        (title: "符号化方法"),
        (title: "Lagrange反演"),
        (title: "形式幂级数复合、复合逆"),
        (title: "普通生成函数"),
        (title: "指数生成函数"),
      ),
    ),
    (
      title: "组合数学",
      children: (
        (title: "排列组合"),
        (title: "抽屉原理"),
        (title: "容斥原理"),
        (title: "斐波那契数列"),
        (title: "错位排列"),
        (title: "卡特兰数"),
        (title: "斯特林数"),
        (title: "贝尔数"),
        (title: "伯努利数"),
        (title: "Entringer Number"),
        (title: "Eulerian Number"),
        (title: "分拆数"),
        (title: "范德蒙德卷积"),
        (title: "Pólya计数"),
        (title: "图论计数"),
      ),
    ),
  ),
)

// ==================== 主知识树 ====================
#align(center)[
  #text(size: 80pt, weight: "bold", font: (
    "Maple Mono Normal NL",
    "Noto Sans CJK SC",
  ))[OI 算法知识体系]
]
#v(-60pt)
#align(center)[
  #block(stroke: 10pt + gray, radius: 10pt, inset: 30pt)[
    #draw-knowledge-tree(data-structures1)
    #grid(
      columns: 2,
      gutter: 20pt,
      [
        #draw-knowledge-tree(data-structures2)
      ],
      [

        #draw-knowledge-tree(dynamic-programming)
      ],
    )
    #grid(
      columns: 2,
      gutter: 20pt,
      [
        #draw-knowledge-tree(search-algorithms)
      ],
      [
        #draw-knowledge-tree(string-algorithms)
      ],
    )
    #draw-knowledge-tree(graph-theory1)
    #grid(
      columns: 2,
      gutter: 20pt,
      [
        #draw-knowledge-tree(graph-theory2)
      ],
      [
        #draw-knowledge-tree(computational-geometry)
      ],
    )
    #draw-knowledge-tree(miscellaneous)
    #draw-knowledge-tree(mathematics0)
    #draw-knowledge-tree(mathematics1)
    #draw-knowledge-tree(mathematics2)
    #draw-knowledge-tree(mathematics3)
  ]
]
