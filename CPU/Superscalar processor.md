# 超标量处理器







## 指令集

指令集分为两类：CISC和RISC两种，目前CPU基本都是采用了精简指令集，主要因为精简指令集微架构更容易设计。例如流水线每个指令周期延迟相同可以更好的设计流水线。 以X86为代表的的CISC复杂指令集在解码的时候会生成uops。



### 指令集概述

RISC 精简指令集目前有两大阵营 ARM 和 MIPS/RISCV。  ARM指令集特点尽可能的在一条指令里干更多的事情，这种风格更像是CISC的风格。 MIPS/RISCV 是更纯粹的精简指令集， 没有什么历史包袱。

#### MIPS/RISCV 指令结构

指令主要分为三大类：I-type、 J-type、R-type。

![image-20220503224714719](C:\Users\mu\AppData\Roaming\Typora\typora-user-images\image-20220503224714719.png)

- I-type  指令里中包含了两个寄存器，立即数部分有16bit。两条I-type可以生成一个32bit的立即数。
- J-type 使用了26bit立即数，因此可以表示0~67,108,863 内的数字，可以直接跳转的范围在64M。
- R-type 使用了更多的寄存器，可以用来实现 b = a * c；