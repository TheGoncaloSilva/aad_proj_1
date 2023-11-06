# aad_proj_1

Repository for Advanced Computer Architecture class project 1, about a cyclic redundancy check digital system.
Good reads about this project:

* Cyclic redundancy check at [Wikipedia](https://en.wikipedia.org/wiki/Cyclic_redundancy_check)
* Computation of cyclic redundancy checks at [Wikipedia](https://en.wikipedia.org/wiki/Computation_of_cyclic_redundancy_checks)
* Explanation for encoder by [Neso academy](https://www.youtube.com/watch?v=A9g6rTMblz4)
* Explanation for checker by [Neso academy](https://www.youtube.com/watch?v=wQGwfBS3gpk)

# Remainder equations
Observing the design principles and following a remainder approach to solve the problem, the following equations were identified to reach the remainder:

Level 0:
* $r_7=(a_0 \oplus a_1) \oplus a_3 \oplus a_5 \oplus a_7 \oplus a_{12} \oplus a_{13}$
* $r_6=(a_1 \oplus a_2) \oplus a_3 \oplus a_4 \oplus a_5 \oplus a_6 \oplus a_7 \oplus a_{11} \oplus a_{13} \oplus a_{15}$
* $r_5=(a_0 \oplus a_1) \oplus a_2 \oplus a_3 \oplus a_4 \oplus a_5 \oplus a_6 \oplus a_{10} \oplus a_{12} \oplus a_{13}$
* $r_4=(a_2 \oplus a_4) \oplus a_7 \oplus a_9 \oplus a_{11} \oplus a_{12} \oplus a_{15}$
* $r_3=(a_1 \oplus a_3) \oplus a_6 \oplus a_8 \oplus a_{10} \oplus a_{11} \oplus a_{14}$
* $r_2=(a_0 \oplus a_2) \oplus a_5 \oplus a_7 \oplus a_9 \oplus a_{10} \oplus a_{13}$
* $r_1=(a_0 \oplus a_3) \oplus a_5 \oplus a_7 \oplus a_8 \oplus a_9 \oplus a_{13} \oplus a_{15}$
* $r_0=(a_0 \oplus a_1) \oplus a_2 \oplus a_4 \oplus a_6 \oplus a_8 \oplus a_{13} \oplus a_{14}$

Level 1:
* $r_7=(\text{xor1} \oplus a_3) \oplus a_5 \oplus a_7 \oplus a_{12} \oplus a_{13}$
    * xor1 = $a_0 \oplus a_1$
* $r_6=(\text{xor2} \oplus a_3) \oplus a_4 \oplus a_5 \oplus a_6 \oplus a_7 \oplus a_{11} \oplus a_{13} \oplus a_{15}$
    * xor2 = $a_1 \oplus a_2$
* $r_5=(\text{xor1} \oplus a_2) \oplus a_3 \oplus a_4 \oplus a_5 \oplus a_6 \oplus a_{10} \oplus a_{12} \oplus a_{13}$
* $r_4=(\text{xor3} \oplus a_7) \oplus a_9 \oplus a_{11} \oplus a_{12} \oplus a_{15}$
    * xor3 = $a_2 \oplus a_4$
* $r_3=(\text{xor4} \oplus a_6) \oplus a_8 \oplus a_{10} \oplus a_{11} \oplus a_{14}$
    * xor4 = $a_1 \oplus a_3$
* $r_2=(\text{xor5} \oplus a_5) \oplus a_7 \oplus a_9 \oplus a_{10} \oplus a_{13}$
    * xor5 = $a_0 \oplus a_2$
* $r_1=(\text{xor6} \oplus a_5) \oplus a_7 \oplus a_8 \oplus a_9 \oplus a_{13} \oplus a_{15}$
    * xor6 = $a_0 \oplus a_3$
* $r_0=(\text{xor1} \oplus a_2) \oplus a_4 \oplus a_6 \oplus a_8 \oplus a_{13} \oplus a_{14}$

Level 2:
* $r_7=\text{xor1} \oplus a_3 \oplus a_5 \oplus \text{xor7} \oplus a_{12}$
    * xor7 = $a_7 \oplus a_13$
* $r_6=\text{xor2} \oplus a_3 \oplus a_4 \oplus a_5 \oplus a_6 \oplus a_{11} \text{xor7} \oplus a_{15}$
* $r_5=\text{xor1} \oplus a_2 \oplus a_3 \oplus \text{xor8} \oplus a_6 \oplus a_{10} \oplus a_{12} \oplus a_{13}$
    * xor8 = $a_4 \oplus a_5$
* $r_4=\text{xor3}\oplus a_9 \oplus a_{11} \oplus \text{xor7} \oplus a_{15}$
* $r_3=\text{xor4} \oplus a_8 \oplus \text{xor9} \oplus a_{11} \oplus a_{14}$
    * xor9 = $a_6 \oplus a_10$
* $r_2=\text{xor5} \oplus \text{xor10} \oplus a_9 \oplus a_{10} \oplus a_{13}$
    * xor10 = $a_5 \oplus a_7$
* $r_1=\text{xor6} \oplus \text{xor10} \oplus a_8 \oplus a_9 \oplus a_{13} \oplus a_{15}$
* $r_0=\text{xor1} \oplus a_2 \oplus \text{xor11} \oplus a_8 \oplus a_{13} \oplus a_{14}$
    * xor11 = $a_4 \oplus a_6$

Level 3:
...
