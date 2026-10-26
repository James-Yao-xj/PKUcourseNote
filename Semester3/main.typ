#import "@preview/ctyp:0.3.0": ctyp
#let (ctypset, cjk) = ctyp()
#let (song, hei, kai, fang) = cjk
#show: ctypset

#set page(
  paper: "a4",
  margin: (top: 2cm, bottom: 2cm, left: 1cm, right: 1cm),
  header: context [#text(10pt, black)[#align(center)[课程笔记]] #line(length: 100%, stroke: gray)],
  footer: context [#align(center)[#counter(page).display("1")]],
)
#set heading(numbering: "1.")

#align(center)[
  #text(size: 24pt, weight: "bold")[课程笔记总目录]
]

本目录按现有课件和笔记组织，整理日期：2026 年 10 月 26 日。

= 计算机系统导论

#link("ICS/main.typ")[课程合订本：计算机系统导论]

- #link("ICS/Chapter1_Introduction/Lesson1.typ")[`Chapter1_Introduction/Lesson1.typ`]
- #link("ICS/Chapter1_Introduction/Lesson2.typ")[`Chapter1_Introduction/Lesson2.typ`]
- #link("ICS/Chapter1_Introduction/Lesson3.typ")[`Chapter1_Introduction/Lesson3.typ`]
- #link("ICS/Chapter3/Lesson4/Lesson4.typ")[`Chapter3/Lesson4/Lesson4.typ`]
- #link("ICS/Chapter3/Lesson5.typ")[`Chapter3/Lesson5.typ`]
- #link("ICS/Chapter3/Lesson6/Lesson6.typ")[`Chapter3/Lesson6/Lesson6.typ`]
- #link("ICS/Chapter3/Lesson7.typ")[`Chapter3/Lesson7.typ`]
- #link("ICS/Chapter3/Lesson8.typ")[`Chapter3/Lesson8.typ`]
- #link("ICS/Chapter4/Lesson9.typ")[`Chapter4/Lesson9.typ`]
- #link("ICS/Chapter4/Lesson10.typ")[`Chapter4/Lesson10.typ`]
- #link("ICS/Chapter4/Lesson11.typ")[`Chapter4/Lesson11.typ`]
- #link("ICS/LabGuide.typ")[`LabGuide.typ`]

= 数据结构与算法

#link("DataStructureAlgorithm/main.typ")[课程合订本：数据结构与算法]

- #link("DataStructureAlgorithm/Lesson3/Lesson3.typ")[`Lesson3/Lesson3.typ`]
- #link("DataStructureAlgorithm/Lesson4/Lesson4.typ")[`Lesson4/Lesson4.typ`]
- #link("DataStructureAlgorithm/Lesson5/Lesson5.typ")[`Lesson5/Lesson5.typ`]
- #link("DataStructureAlgorithm/Lesson6/Lesson6.typ")[`Lesson6/Lesson6.typ`]
- #link("DataStructureAlgorithm/DevEnvironment.typ")[`DevEnvironment.typ`]

原第一、二讲保留独立文件；第三讲已包含概论、线性表、栈与队列，合订本由第三讲开始，以免整段重复。

= 离散数学基础

#link("IDM/main.typ")[课程合订本：离散数学基础]

- #link("IDM/Lesson1.typ")[`Lesson1.typ`]
- #link("IDM/Lesson2.typ")[`Lesson2.typ`]
- #link("IDM/Lesson3.typ")[`Lesson3.typ`]
- #link("IDM/Lesson4.typ")[`Lesson4.typ`]
- #link("IDM/Lesson5.typ")[`Lesson5.typ`]
- #link("IDM/NumberTheory.typ")[`NumberTheory.typ`]

= 信息学中的概率统计

#link("ProbabilityTheoryAndStatistics/main.typ")[课程合订本：信息学中的概率统计]

- #link("ProbabilityTheoryAndStatistics/Lesson1.typ")[`Lesson1.typ`]
- #link("ProbabilityTheoryAndStatistics/Lesson2.typ")[`Lesson2.typ`]
- #link("ProbabilityTheoryAndStatistics/Lesson3.typ")[`Lesson3.typ`]
- #link("ProbabilityTheoryAndStatistics/Lesson5.typ")[`Lesson5.typ`]
- #link("ProbabilityTheoryAndStatistics/Lesson6.typ")[`Lesson6.typ`]
- #link("ProbabilityTheoryAndStatistics/Lesson7.typ")[`Lesson7.typ`]
- #link("ProbabilityTheoryAndStatistics/Lesson8.typ")[`Lesson8.typ`]
- #link("ProbabilityTheoryAndStatistics/Lesson9.typ")[`Lesson9.typ`]

合订本采用第三讲的独立性与离散变量完整记录；第五讲作为同主题独立专题保留。第七讲兼收 10 月 14 日与 10 月 23 日 Part I。

= 经济学原理

#link("PrinciplesOfEconomics/main.typ")[课程合订本：经济学原理]

- #link("PrinciplesOfEconomics/Lesson1.typ")[`Lesson1.typ`]
- #link("PrinciplesOfEconomics/Lesson2.typ")[`Lesson2.typ`]
- #link("PrinciplesOfEconomics/Lesson3.typ")[`Lesson3.typ`]
- #link("PrinciplesOfEconomics/Lesson4.typ")[`Lesson4.typ`]
- #link("PrinciplesOfEconomics/Lesson5.typ")[`Lesson5.typ`]
- #link("PrinciplesOfEconomics/Lesson6.typ")[`Lesson6.typ`]
- #link("PrinciplesOfEconomics/Optimization.typ")[`Optimization.typ`]

= 集合论与图论

#link("SetTheoryAndGraphTheory/main.typ")[课程合订本：集合论与图论]

- #link("SetTheoryAndGraphTheory/Lesson2.typ")[`Lesson2.typ`]
- #link("SetTheoryAndGraphTheory/Lesson3.typ")[`Lesson3.typ`]
- #link("SetTheoryAndGraphTheory/Lesson4.typ")[`Lesson4.typ`]
- #link("SetTheoryAndGraphTheory/Lesson9.typ")[`Lesson9.typ`]
- #link("SetTheoryAndGraphTheory/Lesson10.typ")[`Lesson10.typ`]

沿用该课现有课堂记录，补充集合极限、关系运算、偏序和自然数构造；材料目录中的离散数学教材用于交叉核对。

= 课件对应

#link("课件对应表.typ")[按文件查找课件对应的笔记]

= 第二学期已有课程

#link("../Semester2/WesternModernPhi/ChineseVersion/main.typ")[现代西方哲学：中文笔记]

#link("../Semester2/WesternModernPhi/EnglishVersion/main.typ")[Modern Western Philosophy：English notes]

第二学期保留原有中英文笔记。当前材料目录提供的授课课件对应第三学期。
