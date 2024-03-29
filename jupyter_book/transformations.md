# Transformations


## Vector definition

$$
\begin{aligned}
\underline{v} 
& = \frac{2}{3} \left( v_a + v_b e^{j \frac{2 \pi}{3}}+ v_c e^{j \frac{4 \pi}{3}} \right)\\
& = \frac{2}{3} \left( v_a + v_b (- \frac{1}{2}+j\frac{\sqrt{3}}{2}) + v_c (- \frac{1}{2}-j\frac{\sqrt{3}}{2}) \right)\\
& = \left(\frac{2}{3} v_a - \frac{1}{3}  (v_b+v_c) \right) + j \left( \frac{1}{\sqrt{3}} (v_b-v_c) \right)   \\
& = \frac{2}{3} \left( v_a - \frac{1}{2}  (v_b+v_c) \right) + j \frac{2}{3} \left( \frac{\sqrt{3}}{2} (v_b-v_c) \right)   \\
& = v_\alpha + j v_\beta   \\
\end{aligned}
$$

$$
\begin{bmatrix} \alpha\\ \beta \end{bmatrix}
= \begin{bmatrix} \frac{2}{3} & -\frac{1}{3} & -\frac{1}{3} \\ 0 & \frac{1}{\sqrt{3}} & -\frac{1}{\sqrt{3}} \end{bmatrix}
= \frac{2}{3} \begin{bmatrix} 1 & -\frac{1}{2} & -\frac{1}{2} \\ 0 & \frac{\sqrt{3}}{2} & -\frac{\sqrt{3}}{2} \end{bmatrix}
\begin{bmatrix} a\\ b \\ c \end{bmatrix}
$$
$$
\begin{bmatrix} \alpha\\ \beta \\ 0 \end{bmatrix}
= \begin{bmatrix} \frac{2}{3} & -\frac{1}{3} & -\frac{1}{3} \\ 0 & \frac{1}{\sqrt{3}} & -\frac{1}{\sqrt{3}} \\ \frac{1}{3} & \frac{1}{3} & \frac{1}{3} \end{bmatrix}
\begin{bmatrix} a\\ b \\ c \end{bmatrix}
= \frac{2}{3} \begin{bmatrix} 1 & -\frac{1}{2} & -\frac{1}{2} \\ 0 & \frac{\sqrt{3}}{2} & -\frac{\sqrt{3}}{2} \\ \frac{1}{2} & \frac{1}{2} & \frac{1}{2} \end{bmatrix}
\begin{bmatrix} a\\ b \\ c \end{bmatrix}
$$
$$
\begin{bmatrix} a\\ b \\ c \end{bmatrix}
= \begin{bmatrix} 1 & 0 & 1 \\ -\frac{1}{2} & \frac{\sqrt{3}}{2} & 1 \\ -\frac{1}{2} & -\frac{\sqrt{3}}{2} & 1 \end{bmatrix}
\begin{bmatrix} \alpha\\ \beta \\ 0 \end{bmatrix}
$$

