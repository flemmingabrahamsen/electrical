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
(\#eq:trans1)
$$

### Vector amplitude from alpha-beta

$$
|\underline{v}| = \sqrt{v_\alpha^2 +  v_\beta^2}
(\#eq:amplAB)
$$


### Vector amplitude from abc

$$
\begin{aligned}
|\underline{v}| &= \sqrt{v_\alpha^2 +  v_\beta^2}  \\
& =  \sqrt{\left(\frac{2}{3}( v_a - \frac{1}{2}  (v_b+v_c)) \right)^2 + \left(\frac{2}{3} (\frac{\sqrt{3}}{2} (v_b-v_c) )\right)^2 }  \\
& = \frac{2}{3} \sqrt{\left( v_a - \frac{1}{2}  (v_b+v_c) \right)^2 + \left( \frac{\sqrt{3}}{2} (v_b-v_c) \right)^2 }  \\
& = \frac{2}{3} \sqrt{ v_a^2 + \frac{1}{4}(v_b^2+v_c^2+2v_b v_c)-v_a(v_b+v_c)  + \frac{3}{4} (v_b^2+v_c^2-2v_bv_c)  } \\
& = \frac{2}{3} \sqrt{ v_a^2 + v_b^2 + v_c^2 -v_a v_b -v_b v_c  -v_c v_a } \\
\end{aligned}
(\#eq:amplAbc)
$$



## abc to alpha-beta

System with a zero-component:

$$
\begin{bmatrix} \alpha\\ \beta \\ 0 \end{bmatrix}
= \begin{bmatrix} \frac{2}{3} & -\frac{1}{3} & -\frac{1}{3} \\ 0 & \frac{1}{\sqrt{3}} & -\frac{1}{\sqrt{3}} \\ \frac{1}{3} & \frac{1}{3} & \frac{1}{3} \end{bmatrix}
\begin{bmatrix} a\\ b \\ c \end{bmatrix}
= \frac{2}{3} \begin{bmatrix} 1 & -\frac{1}{2} & -\frac{1}{2} \\ 0 & \frac{\sqrt{3}}{2} & -\frac{\sqrt{3}}{2} \\ \frac{1}{2} & \frac{1}{2} & \frac{1}{2} \end{bmatrix}
\begin{bmatrix} a\\ b \\ c \end{bmatrix}
(\#eq:trans3)
$$

$$
\begin{aligned}
\alpha &= \frac{2}{3}(a - \frac{1}{2}(b+c)) \\
\beta &= \frac{1}{\sqrt{3}}(b-c) \\
0 &= \frac{1}{3}(a+b+c)
\end{aligned}
(\#eq:trans1)
$$


$$
\begin{bmatrix} \alpha\\ \beta \end{bmatrix}
= \begin{bmatrix} \frac{2}{3} & -\frac{1}{3} & -\frac{1}{3} \\ 0 & \frac{1}{\sqrt{3}} & -\frac{1}{\sqrt{3}} \end{bmatrix}
\begin{bmatrix} a\\ b \\ c \end{bmatrix}
= \frac{2}{3} \begin{bmatrix} 1 & -\frac{1}{2} & -\frac{1}{2} \\ 0 & \frac{\sqrt{3}}{2} & -\frac{\sqrt{3}}{2} \end{bmatrix}
\begin{bmatrix} a\\ b \\ c \end{bmatrix}
(\#eq:trans2)
$$

$$
\begin{bmatrix} a\\ b \\ c \end{bmatrix}
= \begin{bmatrix} 1 & 0 & 1 \\ -\frac{1}{2} & \frac{\sqrt{3}}{2} & 1 \\ -\frac{1}{2} & -\frac{\sqrt{3}}{2} & 1 \end{bmatrix}
\begin{bmatrix} \alpha\\ \beta \\ 0 \end{bmatrix}
(\#eq:trans4)
$$




