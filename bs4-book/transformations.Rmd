# Transformations

<!--
AB is used here to denote alpha-beta.
-->

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



## Vector Amplitude


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



## abc <-> alpha-beta



### abc with zero to alpha-beta

The abc to alpha-beta transformation where the abc-system may contain a zero-component is:

$$
\begin{aligned}
v_\alpha &= \frac{2}{3} \left( v_a - \frac{1}{2}  (v_b+v_c) \right) = \frac{2}{3}  v_a - \frac{1}{3}  (v_b+v_c) = \frac{1}{3} ( 2 v_a - v_b-v_c)  \\
v_\beta &= \frac{2}{3} \left( \frac{\sqrt{3}}{2} (v_b-v_c) \right)=  \frac{1}{\sqrt{3}} (v_b-v_c) \\
\end{aligned}
(\#eq:abcAB1)
$$

Matrix form:

$$
\begin{bmatrix} \alpha\\ \beta \end{bmatrix}
= \frac{2}{3} \begin{bmatrix} 1 & -\frac{1}{2} & -\frac{1}{2} \\ 0 & \frac{\sqrt{3}}{2} & -\frac{\sqrt{3}}{2} \end{bmatrix}  
\begin{bmatrix} a\\ b \\ c \end{bmatrix}
= \begin{bmatrix} \frac{2}{3} & -\frac{1}{3} & -\frac{1}{3} \\ 0 & \frac{1}{\sqrt{3}} & -\frac{1}{\sqrt{3}} \end{bmatrix}
\begin{bmatrix} a\\ b \\ c \end{bmatrix}
(\#eq:abcAB2)
$$



### abc without zero to AB

If the abc-system has no zero-component, so $v_a=-(v_b+v_c)$, we can simplify:

$$
\begin{aligned}
v_\alpha &=   v_a\\
v_\beta &=  \frac{1}{\sqrt{3}} (v_b-v_c) \\
\end{aligned}
(\#eq:abcAB2)
$$

Written in matrix form:

$$
\begin{bmatrix} \alpha\\ \beta \end{bmatrix}
= \begin{bmatrix} 1 & 0 & 0 \\ 0 & \frac{1}{\sqrt{3}} & -\frac{1}{\sqrt{3}} \end{bmatrix}
\begin{bmatrix} a\\ b \\ c \end{bmatrix}
(\#eq:abcABmat2)
$$

### AB to abc

This transformation will give an abc-system without a zero-component, as the alpha-beta system does not contain a zero-component.

$$
\begin{aligned}
v_a &= v_\alpha \\
v_b &=  - \frac{1}{2}(v_\alpha -\sqrt{3}v_\beta) \\
v_c &=  - \frac{1}{2}(v_\alpha +\sqrt{3}v_\beta) \\
\end{aligned}
(\#eq:transABabc1)
$$

In matrix form:

$$
\begin{bmatrix} a\\ b \\ c \end{bmatrix}
= \begin{bmatrix} 1 & 0 \\ -\frac{1}{2} & \frac{\sqrt{3}}{2} \\ -\frac{1}{2} & -\frac{\sqrt{3}}{2} \end{bmatrix}
\begin{bmatrix} \alpha\\ \beta \end{bmatrix}
(\#eq:transABabc2)
$$



## abc <-> AB0

The two-component alpha-beta system does not contain a zero-component, so if the zero-component of the abc-system must be preserved in the alpha-beta system, a third zero component must be included.


### abc -> AB0


$$
\begin{aligned}
v_\alpha &= \frac{2}{3}(v_a - \frac{1}{2}(v_b+v_c)) = \frac{2}{3}v_a - \frac{1}{3}(v_b+v_c) = \frac{1}{3} ( 2 v_a - v_b-v_c)\\
v_\beta &= \frac{1}{\sqrt{3}}(v_b-v_c)  \\
v_0 &= \frac{1}{3}(v_a+v_b+v_c)
\end{aligned}
(\#eq:transabcAB01)
$$


Written in matrix form:

$$
\begin{bmatrix} \alpha \\ \beta \\ 0 \end{bmatrix}
= \frac{2}{3} \begin{bmatrix} 1 & -\frac{1}{2} & -\frac{1}{2} \\ 0 & \frac{\sqrt{3}}{2} & -\frac{\sqrt{3}}{2} \\ \frac{1}{2} & \frac{1}{2} & \frac{1}{2} \end{bmatrix}
\begin{bmatrix} a\\ b \\ c \end{bmatrix}
= \begin{bmatrix} \frac{2}{3} & -\frac{1}{3} & -\frac{1}{3} \\ 0 & \frac{1}{\sqrt{3}} & -\frac{1}{\sqrt{3}} \\ \frac{1}{3} & \frac{1}{3} & \frac{1}{3} \end{bmatrix}
\begin{bmatrix} a\\ b \\ c \end{bmatrix}
(\#eq:transabcAB02)
$$



### AB0 -> abc


$$
\begin{aligned}
v_a &= v_0 + v_\alpha \\
v_b &= v_0 - \frac{1}{2}(v_\alpha +\sqrt{3}v_\beta) \\
v_c &= v_0 - \frac{1}{2}(v_\alpha -\sqrt{3}v_\beta) \\
\end{aligned}
(\#eq:transABabc1)
$$




$$
\begin{bmatrix} a\\ b \\ c \end{bmatrix}
= \begin{bmatrix} 1 & 0 & 1 \\ -\frac{1}{2} & \frac{\sqrt{3}}{2} & 1 \\ -\frac{1}{2} & -\frac{\sqrt{3}}{2} & 1 \end{bmatrix}
\begin{bmatrix} \alpha\\ \beta \\ 0 \end{bmatrix}
(\#eq:transABabc1)
$$


## Line-Line <-> AB

The line-line voltage are between phases: a-b, b-c, c-a.

### Line-Line -> AB

From above we have the formula:

$$
\begin{aligned}
v_\alpha &=  \frac{1}{3} ( 2 v_a - v_b-v_c) = \frac{1}{3} ( (v_a - v_b)-(v_c-v_a))= \frac{1}{3} ( v_{ab} - v_{ca})   \\
v_\beta &=   \frac{1}{\sqrt{3}} (v_b-v_c) = \frac{1}{\sqrt{3}} v_{bc}   \\
\end{aligned}
(\#eq:abcAB1)
$$

Written in matrix form:


$$
\begin{bmatrix} \alpha\\ \beta \end{bmatrix}
= \begin{bmatrix} \frac{1}{3} & 0 & -\frac{1}{3} \\ 0 & \frac{1}{3} & -\frac{1}{3} \end{bmatrix}
\begin{bmatrix} ab\\ bc \\ ca \end{bmatrix}
(\#eq:abcABmat2)
$$

### AB -> Line-Line


$$
\begin{aligned}
v_{ab} &=  v_a - v_b =v_\alpha + \frac{1}{2}(v_\alpha -\sqrt{3}v_\beta)
=\frac{3}{2}v_\alpha - \frac{\sqrt{3}}{2}v_\beta 
=\frac{3}{2} (v_\alpha - \frac{1}{\sqrt{3}}v_\beta  )  \\
v_{bc} &=  v_b - v_c =  - \frac{1}{2}(v_\alpha -\sqrt{3}v_\beta)+ \frac{1}{2}(v_\alpha +\sqrt{3}v_\beta) = \sqrt{3}v_\beta  \\
v_{bc} &=  v_c - v_a =  - \frac{1}{2}(v_\alpha +\sqrt{3}v_\beta) - v_\alpha 
= -\frac{3}{2}v_\alpha - \frac{\sqrt{3}}{2}v_\beta =\frac{3}{2} (-v_\alpha - \frac{1}{\sqrt{3}}v_\beta  )  \\
\end{aligned}
(\#eq:abcAB1)
$$
In matrix form:

$$
\begin{bmatrix} ab\\ bc \\ ca \end{bmatrix}
= \begin{bmatrix} \frac{3}{2} & -\frac{\sqrt{3}}{2} \\  0 & \sqrt{3} \\ 
-\frac{3}{2} & -\frac{\sqrt{3}}{2} \end{bmatrix}
\begin{bmatrix} \alpha\\ \beta \end{bmatrix}
= \frac{3}{2} \begin{bmatrix} 1 & -\frac{1}{\sqrt{3}} \\  0 & \frac{2}{\sqrt{3}} \\ 
-1 & -\frac{1}{\sqrt{3}} \end{bmatrix}
\begin{bmatrix} \alpha\\ \beta \end{bmatrix}
(\#eq:abcABmat2)
$$



## Rotation

This is the general matrix for rotation, which rotates a vector in positive direction with angle $\theta$.

$$
\begin{bmatrix} \cos\theta & -\sin\theta \\  \sin\theta & \cos\theta  \end{bmatrix}
(\#eq:transRot)
$$


### dq -> alpha-beta

Dq to alpha-beta is a forward rotation, so it is:

$$
\begin{bmatrix} \alpha \\  \beta  \end{bmatrix} =
\begin{bmatrix} \cos\theta & -\sin\theta \\  \sin\theta & \cos\theta  \end{bmatrix}
\begin{bmatrix} d \\  q  \end{bmatrix}
(\#eq:transAbDq)
$$

### alpha-beta -> dq

Alpha-beta to Dq is a backward rotation, so it is:

$$
\begin{bmatrix} d \\  q  \end{bmatrix}=
\begin{bmatrix} \cos\theta & \sin\theta \\  -\sin\theta & \cos\theta  \end{bmatrix}
\begin{bmatrix} \alpha \\ \beta  \end{bmatrix} 
(\#eq:transDqAb)
$$









