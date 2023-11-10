# Design and Implement a CRC-8 Encoder and Checker using Digital Systems logic

Repository for High Performance Architectures class project 1, about a cyclic redundancy check digital system.

The object of this project is to implement, in hardware with VHDL, an Encoder and a Checker/Decoder, for **CRC-8** strings with the goal for a receiver of a message to be able to detect errors in it.

If you don't know what **CRC** is, we suggest checking the following links with explanations and use-cases:

* Cyclic redundancy check at [Wikipedia](https://en.wikipedia.org/wiki/Cyclic_redundancy_check)
* Computation of cyclic redundancy checks at [Wikipedia](https://en.wikipedia.org/wiki/Computation_of_cyclic_redundancy_checks)
* Explanation for encoder by [Neso academy](https://www.youtube.com/watch?v=A9g6rTMblz4)
* Explanation for checker by [Neso academy](https://www.youtube.com/watch?v=wQGwfBS3gpk)

# Encoder

The encoder is a block that should take a 16-bit word and output a 24-bit one. Where the first 16 bits should be the entry word itself and the remaining 8 bits, the computed **CRC** value.

## Remainder

Observing the design principles and following a remainder approach to solve the problem, the following equations were identified to reach the remainder:

Level 0:

* $r_7=(a_0 \oplus a_1) \oplus a_3 \oplus a_5 \oplus a_7 \oplus a_{12} \oplus a_{13}$
* $r_6=(a_1 \oplus a_2) \oplus a_3 \oplus a_4 \oplus a_5 \oplus a_6 \oplus a_7 \oplus a_{11} \oplus a_{13} \oplus a_{15}$
* $r_5=(a_0 \oplus a_1) \oplus a_2 \oplus a_3 \oplus a_4 \oplus a_5 \oplus a_6 \oplus a_{10} \oplus a_{12} \oplus a_{14}$
* $r_4=(a_2 \oplus a_4) \oplus a_7 \oplus a_9 \oplus a_{11} \oplus a_{12} \oplus a_{15}$
* $r_3=(a_1 \oplus a_3) \oplus a_6 \oplus a_8 \oplus a_{10} \oplus a_{11} \oplus a_{14}$
* $r_2=(a_0 \oplus a_2) \oplus a_5 \oplus a_7 \oplus a_9 \oplus a_{10} \oplus a_{13}$
* $r_1=(a_0 \oplus a_3) \oplus a_4 \oplus a_5 \oplus a_6 \oplus a_7 \oplus a_8 \oplus a_9 \oplus a_{13} \oplus a_{15}$
* $r_0=(a_0 \oplus a_1) \oplus a_2 \oplus a_4 \oplus a_6 \oplus a_8 \oplus a_{13} \oplus a_{14}$

Simplication:

* $r_7=(\text{xor1} \oplus a_3) \oplus a_5 \oplus a_7 \oplus a_{12} \oplus a_{13}$
  * xor1 = $a_0 \oplus a_1$
* $r_6=(\text{xor2} \oplus a_3) \oplus a_4 \oplus a_5 \oplus a_6 \oplus a_7 \oplus a_{11} \oplus a_{13} \oplus a_{15}$
  * xor2 = $a_1 \oplus a_2$
* $r_5=(\text{xor1} \oplus a_2) \oplus a_3 \oplus a_4 \oplus a_5 \oplus a_6 \oplus a_{10} \oplus a_{12} \oplus a_{14}$
* $r_4=(\text{xor3} \oplus a_7) \oplus a_9 \oplus a_{11} \oplus a_{12} \oplus a_{15}$
  * xor3 = $a_2 \oplus a_4$
* $r_3=(\text{xor4} \oplus a_6) \oplus a_8 \oplus a_{10} \oplus a_{11} \oplus a_{14}$
  * xor4 = $a_1 \oplus a_3$
* $r_2=(\text{xor5} \oplus a_5) \oplus a_7 \oplus a_9 \oplus a_{10} \oplus a_{13}$
  * xor5 = $a_0 \oplus a_2$
* $r_1=(\text{xor6} \oplus a_4) \oplus a_5 \oplus a_6 \oplus a_7 \oplus a_8 \oplus a_9 \oplus a_{13} \oplus a_{15}$
  * xor6 = $a_0 \oplus a_3$
* $r_0=(\text{xor1} \oplus a_2) \oplus a_4 \oplus a_6 \oplus a_8 \oplus a_{13} \oplus a_{14}$
* 

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

In this example, there needs to be two levels of processing. One where $(a_0 \oplus a_1)$ is done and another where this result is **xor'ed** with $a_3$. The system can execute various xor's at each level. But the aim of optimizing is to reach the smaller amount of xor's needed, by taking advantage of multiple xor's needed. In our case, the theoretical value of xor's needed without optimizing would be 58 and 9 propagation delays and we managed to reduce the amount of xor's to 40 and 3-4 propagation delays.

# Encoder

The encoder is a block that should take a 16-bit word and output a 24-bit one. Where the first 16 bits should be the entry word itself and the remaining 8 bits, the computed **CRC** value.

## Division

Observing the design principles and following a division algorithm approach to solve the problem, the following equations were identified to reach the remainder:

The bigger blocks for division algo are Linear Feedback Shift Registers