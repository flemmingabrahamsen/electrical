# PM Machine

## Nomenclature

<!-- 
-->

$R_s$: Stator resistance.  
$\psi_{pm}$: Permament magnet flux linkage.  
$\omega_m$: Angular frequency of shaft in electrical frame, i.e compensated for pole-pairs.  
$L_d$: d-axis inductance.  
$L_q$: q-axis inductance.  
$\tau_{em}$: Electro-magnetic torque.  
$N_{pp}$: Pole-pair number.  


## Machine Equations


$$
\begin{aligned}
v_d & = R_s i_d + L_d\frac{di_d}{dt} - j \omega_m L_q i_q  \\
v_q & = R_s i_q + L_q\frac{di_q}{dt} + j \omega_m (L_d i_d + \psi_{pm})  \\
\tau_{em} & =  (\psi_{pm} + (L_d-L_q) i_d)i_q  \\
\end{aligned}
(\#eq:pmsmMdl1)
$$

## Maximum Torque Per Ampere (MTPA)

MTPA is a commonly used control strategy by which the current is controlled to produce the maximum torque for at given current amplitude. It is shown here how the control equations are derived. This is done from the torque equation:

$$
\begin{aligned}
T_{em} & =  (\psi_{pm} + (L_d-L_q) i_d)i_q  \\
\end{aligned}
(\#eq:mtpa1)
$$
The current amplitude is:
$$
|\underline{i}| = \sqrt{i^2_d + i^2_q} \Rightarrow  i_q =  (|\underline{i}|^2 - i^2_d)^{1/2} 
(\#eq:mtpa2)
$$
Inserting this in the torque equations, we get:

$$
\begin{aligned}
T_{em} & =  (\psi_{pm} + (L_d-L_q) i_d)(|\underline{i}|^2 - i^2_d)^{1/2}  \\
 & =  \psi_{pm}(|\underline{i}|^2 - i^2_d)^{1/2} + (L_d-L_q) i_d(|\underline{i}|^2 - i^2_d)^{1/2}  \\
\end{aligned}
(\#eq:mtpa3)
$$
This equation describes, for for at given current amplitude, how the torque varies as a function of $i_d$. By differentiating, we can find the $i_d$, which gives the maximum torque for the given current amplitude $|\underline{i}|$.

$$
\begin{aligned}
\frac{\partial T_{em}}{\partial i_d} & =  \psi_{pm}\frac{1}{2} (|\underline{i}|^2 - i^2_d)^{-1/2} (-2i_d) + 
(L_d-L_q) \left(  (|\underline{i}|^2 - i^2_d)^{1/2}   + i_d \frac{1}{2} (|\underline{i}|^2 - i^2_d)^{-1/2} (-2i_d)  \right)  \\
 & =  -\psi_{pm} i_d (|\underline{i}|^2 - i^2_d)^{-1/2}  + 
(L_d-L_q) \left(  (|\underline{i}|^2 - i^2_d)^{1/2}   - i_d^2  (|\underline{i}|^2 - i^2_d)^{-1/2}   \right)  \\
\end{aligned}
(\#eq:mtpa3)
$$
We can now set the differential equal to zero:

$$
\begin{aligned}
\frac{\partial T_{em}}{\partial i_d} & =  0  \\
-\psi_{pm} i_d (|\underline{i}|^2 - i^2_d)^{-1/2}  + (L_d-L_q) \left(  (|\underline{i}|^2 - i^2_d)^{1/2}   - i_d^2  (|\underline{i}|^2 - i^2_d)^{-1/2}   \right) & = 0 \\
-\psi_{pm} i_d   + (L_d-L_q) \left(  |\underline{i}|^2 - i^2_d   - i_d ^2    \right) & = 0 \\
-\psi_{pm} i_d   + (L_d-L_q) (  |\underline{i}|^2 - 2i^2_d     ) & = 0 \\
 2 (L_d-L_q)i^2_d  +\psi_{pm} i_d   - (L_d-L_q)  |\underline{i}|^2  & = 0 \\
\end{aligned}
(\#eq:mtpa4)
$$
The MTPA d-current is now given as:

$$
\begin{aligned}
i_d &= \frac{-\psi_{pm} - \sqrt{\psi_{pm}^2 - 8 (L_d-L_q)^2 |\underline{i}|^2}}{4 (L_d-L_q)} \\
&= \frac{-\psi_{pm} }{4 (L_d-L_q)} -   \sqrt{\frac{\psi_{pm}^2}{16 (L_d-L_q)^2} - \frac{1}{2} |\underline{i}|^2}\\
\end{aligned}
(\#eq:mtpa5)
$$
And and q-current is calculated as:

$$
i_q = \sqrt{|\underline{i}|^2 - i^2_d }
(\#eq:mtpa6)
$$



