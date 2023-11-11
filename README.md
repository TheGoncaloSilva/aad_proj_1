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

## Remainder Properties

Observing the design principles, we chose to implement the  remainder properties, since this one allowed to have lower propagation delays and xor's, the following equations were identified to reach the remainder:

Level 0:

* $r_7=(a_0 \oplus a_1) \oplus a_3 \oplus a_5 \oplus a_7 \oplus a_{12} \oplus a_{13}$
* $r_6=(a_1 \oplus a_2) \oplus a_3 \oplus a_4 \oplus a_5 \oplus a_6 \oplus a_7 \oplus a_{11} \oplus a_{13} \oplus a_{15}$
* $r_5=(a_0 \oplus a_1) \oplus a_2 \oplus a_3 \oplus a_4 \oplus a_5 \oplus a_6 \oplus a_{10} \oplus a_{12} \oplus a_{14}$
* $r_4=(a_2 \oplus a_4) \oplus a_7 \oplus a_9 \oplus a_{11} \oplus a_{12} \oplus a_{15}$
* $r_3=(a_1 \oplus a_3) \oplus a_6 \oplus a_8 \oplus a_{10} \oplus a_{11} \oplus a_{14}$
* $r_2=(a_0 \oplus a_2) \oplus a_5 \oplus a_7 \oplus a_9 \oplus a_{10} \oplus a_{13}$
* $r_1=(a_0 \oplus a_3) \oplus a_4 \oplus a_5 \oplus a_6 \oplus a_7 \oplus a_8 \oplus a_9 \oplus a_{13} \oplus a_{15}$
* $r_0=(a_0 \oplus a_1) \oplus a_2 \oplus a_4 \oplus a_6 \oplus a_8 \oplus a_{13} \oplus a_{14}$

Simplification:

* $r_7=(\text{xor1} \oplus a_3) \oplus a_5 \oplus a_7 \oplus a_{12} \oplus a_{13}$
  * **xor1** = $a_0 \oplus a_1$
* $r_6=(\text{xor2} \oplus a_3) \oplus a_4 \oplus a_5 \oplus a_6 \oplus a_7 \oplus a_{11} \oplus a_{13} \oplus a_{15}$
  * **xor2** = $a_1 \oplus a_2$
* $r_5=(\text{xor1} \oplus a_2) \oplus a_3 \oplus a_4 \oplus a_5 \oplus a_6 \oplus a_{10} \oplus a_{12} \oplus a_{14}$
* $r_4=(\text{xor3} \oplus a_7) \oplus a_9 \oplus a_{11} \oplus a_{12} \oplus a_{15}$
  * **xor3** = $a_2 \oplus a_4$
* $r_3=(\text{xor4} \oplus a_6) \oplus a_8 \oplus a_{10} \oplus a_{11} \oplus a_{14}$
  * **xor4** = $a_1 \oplus a_3$
* $r_2=(\text{xor5} \oplus a_5) \oplus a_7 \oplus a_9 \oplus a_{10} \oplus a_{13}$
  * **xor5** = $a_0 \oplus a_2$
* $r_1=(\text{xor6} \oplus a_4) \oplus a_5 \oplus a_6 \oplus a_7 \oplus a_8 \oplus a_9 \oplus a_{13} \oplus a_{15}$
  * **xor6** = $a_0 \oplus a_3$
* $r_0=(\text{xor1} \oplus a_2) \oplus a_4 \oplus a_6 \oplus a_8 \oplus a_{13} \oplus a_{14}$

...
Result:

* $r_7=\text{xor37}$ (finishes in 3 levels)
* $r_6=\text{xor38}$ (finishes in 4 levels)
* $r_5=\text{xor39}$ (finishes in 4 levels)
* $r_4=\text{xor34}$ (finishes in 3 levels)
* $r_3=\text{xor33}$ (finishes in 3 levels)
* $r_2=\text{xor32}$ (finishes in 3 levels)
* $r_1=\text{xor40}$ (finishes in 4 levels)
* $r_1=\text{xor31}$ (finishes in 3 levels)

The **levels** here mentioned represent every time there is *feedback* in our system. Take the following example:

$$
(a_0 \oplus a_1) \oplus a_3
$$

In this example, there needs to be two levels of processing. One where $(a_0 \oplus a_1)$ is done and another where this result is **xor'ed** with $a_3$. The system can execute various xor's at each level. But the aim of optimizing is to reach the smaller amount of xor's needed, by taking advantage of multiple xor's needed. In our case, the theoretical value of xor's needed without optimizing would be 58 and 9 propagation delays and we managed to reduce the amount of xor's to 40 and **3-4 propagation delays**.

The exact simplifications conducted can be seen in this **spreadsheets (include hyperlink here)**. This component was implemented using a **Parallel** implementation.

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


