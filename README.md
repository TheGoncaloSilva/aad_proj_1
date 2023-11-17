# Design and Implement a CRC-8 Encoder and Checker using Digital Systems logic

Repository for High Performance Architectures class project 1, about a cyclic redundancy check digital system.

The object of this project is to implement, in hardware with VHDL, an Encoder and a Checker/Decoder, for **CRC-8** strings with the goal for a receiver of a message to be able to detect errors in it.

If you don't know what **CRC** is, we suggest checking the following links with explanations and use-cases:

* Cyclic redundancy check at [Wikipedia](https://en.wikipedia.org/wiki/Cyclic_redundancy_check)
* Computation of cyclic redundancy checks at [Wikipedia](https://en.wikipedia.org/wiki/Computation_of_cyclic_redundancy_checks)
* Explanation for encoder by [Neso academy](https://www.youtube.com/watch?v=A9g6rTMblz4)
* Explanation for checker by [Neso academy](https://www.youtube.com/watch?v=wQGwfBS3gpk)
* CRC complete explanation by [University 4u](https://www.youtube.com/watch?v=bdFRCmzayyw)

# Encoder

The encoder is a block that should take a 16-bit word and output a 24-bit one. Where the first 16 bits should be the entry word itself and the remaining 8 bits, the computed **CRC** value. Following we have a small example of the division algorithm, with the message **100100** and the divisor **1101**. Since the divisor is 4-bits, the CRC should have $4-1=3$ bits and to calculate it we append this number of bits to the message and conduct the division. Attention that this is not the chosen algorithm for our implementation, due to the increased computations in comparison to te **Remainder Properties**

$$
\begin{array}{rl}
100100000 & \underline{|\phantom{0}1101} \\
\underline{\phantom{0}-1101} & |\phantom{0}111101 \\
01000 \\
\underline{\phantom{0}-1101} \\
01010 \\
\underline{\phantom{0}-1101} \\
01110 \\
\underline{\phantom{0}-1101} \\
00110 \\
\underline{\phantom{0}-0} \\
001100 \\
\underline{\phantom{0}-1101} \\
001 \\
\end{array}
$$

* $\text{Message} = 100100$ (6 bits)
* $\text{Divisor} = 1101$ (4 bits)
* $\text{CRC} = 001$ ($\text{Divisor}_{\text{bits}}-1 = 3 \text{bits}$)
* $\text{Encoded Message} = 100100001$
* $Q(x) = 111101$ ($\text{Message}_{\text{bits}}-1 = 5 \text{bits}$)


# Remainder Properties Optimization
## Introduction

In the pursuit of optimizing error-detection codes, the use of remainder properties proves to be an effective strategy. This approach aims to reduce both the number of XOR operations and propagation delays, enhancing the overall efficiency of the parallel encoder. The following markdown chapter outlines the process of analyzing the original equations, implementing a script for optimization, and presenting the final optimized solution.

## Original Equations

The original set of equations for the parallel encoder is represented by eight polynomials, denoted as $r_{i}$ for $i$ ranging from 0 to 7. These polynomials involve XOR $\oplus$ operations among bits $a_{0}$ through $a_{15}$.

* $r_7= a_0 \oplus a_1 \oplus a_3 \oplus a_5 \oplus a_7 \oplus a_{12} \oplus a_{13}$
* $r_6= a_1 \oplus a_2 \oplus a_3 \oplus a_4 \oplus a_5 \oplus a_6 \oplus a_7 \oplus a_{11} \oplus a_{13} \oplus a_{15}$
* $r_5= a_0 \oplus a_1 \oplus a_2 \oplus a_3 \oplus a_4 \oplus a_5 \oplus a_6 \oplus a_{10} \oplus a_{12} \oplus a_{14}$
* $r_4= a_2 \oplus a_4 \oplus a_7 \oplus a_9 \oplus a_{11} \oplus a_{12} \oplus a_{15}$
* $r_3= a_1 \oplus a_3 \oplus a_6 \oplus a_8 \oplus a_{10} \oplus a_{11} \oplus a_{14}$
* $r_2= a_0 \oplus a_2  \oplus a_5 \oplus a_7 \oplus a_9 \oplus a_{10} \oplus a_{13}$
* $r_1= a_0 \oplus a_3 \oplus a_4 \oplus a_5 \oplus a_6 \oplus a_7 \oplus a_8 \oplus a_9 \oplus a_{13} \oplus a_{15}$
* $r_0= a_0 \oplus a_1 \oplus a_2 \oplus a_4 \oplus a_6 \oplus a_8 \oplus a_{13} \oplus a_{14}$


## Optimization Script

To optimize the equations, a Python script named `crc_optimizer.py` was implemented. The script utilizes a ranking system that identifies XOR combinations occurring frequently and suggests their inclusion in the optimized equations. The user is prompted to provide new values for each bit layer, allowing for iterative optimization.

The script generates all possible pairs for each bit layer and finds the combinations that yield the maximum reduction in XOR operations. The final optimized solution is presented in a ranking format, guiding the user towards the most significant XOR combinations.

# Optimized XOR Combinations

After an in-depth analysis and iterative optimization process using the `crc_optimizer.py` script, the parallel encoder's XOR combinations were successfully streamlined. The initial set of equations, involving 58 XOR operations, was refined to a more efficient configuration, reducing the number of XORs to 40. The optimized XOR combinations are organized into levels, reflecting the feedback stages within the system. The optimization successfully identifies and prioritizes the most frequent XOR patterns, significantly improving computational efficiency.


## Level 1

- XOR1: $a_{13} \oplus a_7$
- XOR2: $a_6 \oplus a_4$
- XOR3: $a_5 \oplus a_3$
- XOR4: $a_{14} \oplus a_1$
- XOR5: $a_0 \oplus a_2$
- XOR6: $a_2 \oplus a_{11}$
- XOR7: $a_9 \oplus a_{15}$
- XOR8: $a_0 \oplus a_1$
- XOR9: $a_0 \oplus a_8$
- XOR10: $a_8 \oplus a_{13}$
- XOR11: $a_5 \oplus a_9$
- XOR12: $a_{10} \oplus a_{11}$
- XOR13: $a_{10} \oplus a_{12}$
- XOR14: $a_6 \oplus a_8$
- XOR15: $a_4 \oplus a_7$
- XOR16: $a_{15} \oplus a_1$

## Level 2

- XOR17: $XOR1 \oplus XOR3$
- XOR18: $XOR2 \oplus XOR4$
- XOR19: $a_3 \oplus XOR14$
- XOR20: $XOR1 \oplus XOR5$
- XOR21: $XOR2 \oplus XOR7$
- XOR22: $XOR5 \oplus XOR10$
- XOR23: $XOR11 \oplus a_{10}$
- XOR24: $XOR4 \oplus XOR12$
- XOR25: $XOR6 \oplus XOR7$
- XOR26: $XOR3 \oplus XOR5$
- XOR27: $XOR15 \oplus a_{12}$
- XOR28: $XOR6 \oplus XOR2$
- XOR29: $XOR8 \oplus a_{12}$

## Level 3

- **XOR30:** $XOR18 \oplus XOR22$ - **R0 SOLUTION**
- XOR31: $XOR21 \oplus XOR9$
- **XOR32:** $XOR20 \oplus XOR23$ - **R2 SOLUTION**
- **XOR33:** $XOR19 \oplus XOR24$ - **R3 SOLUTION**
- **XOR34:** $XOR25 \oplus XOR27$ - **R4 SOLUTION**
- XOR35: $XOR26 \oplus XOR13$
- XOR36: $XOR28 \oplus XOR16$
- **XOR37:** $XOR17 \oplus XOR29$ - **R7 SOLUTION**

## Level 4

- **XOR38:** $XOR17 \oplus XOR36$ - **R6 SOLUTION**
- **XOR39:** $XOR18 \oplus XOR35$ - **R5 SOLUTION**
- **XOR40:** $XOR17 \oplus XOR31$ - **R1 SOLUTION**

These optimized XOR combinations contribute to a more efficient parallel encoder, reducing the computational load and propagation delays. The identification and prioritization of frequently occurring XOR patterns showcase the effectiveness of the optimization process, resulting in an enhanced error-detection code.

## Conclusion
### Summary:

- **$r_7$:** $\text{XOR37}$ (finishes in 3 levels)
- **$r_6$:** $\text{XOR38}$ (finishes in 4 levels)
- **$r_5$:** $\text{XOR39}$ (finishes in 4 levels)
- **$r_4$:** $\text{XOR34}$ (finishes in 3 levels)
- **$r_3$:** $\text{XOR33}$ (finishes in 3 levels)
- **$r_2$:** $\text{XOR32}$ (finishes in 3 levels)
- **$r_1$:** $\text{XOR40}$ (finishes in 4 levels)
- **$r_1$:** $\text{XOR30}$ (finishes in 3 levels)

The **levels** mentioned represent each instance of *feedback* in the system. Consider the following example:

$$
(a_0 \oplus a_1) \oplus a_3
$$

In this example, two levels of processing are needed. One where $(a_0 \oplus a_1)$ is executed and another where this result is **XOR'ed** with $a_3$. The system can perform various XOR operations at each level. The goal of optimization is to minimize the number of XOR operations needed by taking advantage of multiple XORs in each level. In our case, the theoretical number of XORs needed without optimization would be 58, with 9 propagation delays. However, through optimization, we managed to reduce the number of XORs to 40 and achieve **3-4 propagation delays**.

The detailed simplifications conducted can be viewed in this [spreadsheet](https://docs.google.com/spreadsheets/d/1CsTB0bZz6s2GWEfCbEtgzzU8rn8X1ISSbtLjJZouMgA/edit?usp=sharing). This component was implemented using a **Parallel** implementation.



# Checker

The checker is a block that should take a 24-bit word and output one bit. This bit indicates if the message was received with (bit with value 1) or without errors (bit with value 0). Inherently the first 16 bits should represent the message itself and the following 8 bits, the computed CRC value. Considering the previous encoder example, assuming that we received the correct encoded message **100100001**, the **Division Algorithm** would do the following calculations:
$$
\begin{array}{rl}
100100001 & \underline{|\phantom{0}1101} \\
\underline{\phantom{0}-1101} & |\phantom{0}111101 \\
01000 \\
\underline{\phantom{0}-1101} \\
01010 \\
\underline{\phantom{0}-1101} \\
01110 \\
\underline{\phantom{0}-1101} \\
00110 \\
\underline{\phantom{0}-0} \\
001101 \\
\underline{\phantom{0}-1101} \\
000 \\
\end{array}
$$

Since the **remainder** of the division is $0$, the Message was received without errors.

## Division Algorithm

Observing the design principles, we chose to implement the  division algorithm, since this one allowed to have lower propagation delays and xor's. This component was implemented using a **bit-serial** implementation, so that means that a control unit was used. This control unit can store up to 32 entries and is supplied by a 5 bit binary counter. This is done to be able to hold 24 counting states **?** and another one for comparison **?**.

THe algorithm itself by a **Linear Feedback Shift Registers**,which uses 8 Flip Flops and 5 Xor's. When the remainder is calculated, the result is read by our **Comparator** which compares essentially to $0$ (all the values are just **OR'ed**). The output of this block will indicate if there was any error.


