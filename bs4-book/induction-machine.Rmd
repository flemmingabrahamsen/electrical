# Induction Machine

## Nomenclature
<!-- 
-->

$\underline{v}_s$: Stator voltage vector.\
$\underline{v}_r$: Rotor voltage vector.\
$R_s$: Stator resistance.\
$R_r$: Rotor resistance.\
$\underline{\psi}_s$: Stator flux linkage.\
$\underline{\psi}_r$: Rotor flux linkage.\
$\omega_c$: Angular frequency of reference frame.\
$\omega_m$: Angular frequency of shaft in electrical frame, i.e compensated for pole-pairs.\
$L_s$: Stator inductance.\
$L_r$: Rotor inductance.\
$L_m$: Magnetizing inductance.\
$L_m$: Magnetizing inductance.\
$L_{s\sigma}$: Stator leakage inductance.\
$L_{r\sigma}$: Rotor leakage inductance. \
$1-\frac{L^2_m}{L_sL_r}$: total leakage coefficient. \

## Machine Equations


### Voltage Equations

$$
\begin{aligned}
\underline{v}_s & = R_s \underline{i}_s + \frac{d\underline{\psi}_s}{dt} + j \omega_c \psi_s  \\
\underline{v}_r & = R_r \underline{i}_r + \frac{d\underline{\psi}_r}{dt} + j (\omega_c-\omega_m) \psi_s \\
\end{aligned}
$$

### Stator Equation

The stator equation in the stator reference frame is:
$$
\begin{aligned}
\underline{v}_s & = R_s \underline{i}_s + \frac{d\underline{\psi}_s}{dt}  \\
\end{aligned}
$$
We want to express this in a general reference frame, where $\rho_s$ is the angle from the stator fixed frame to the general reference frame. With the superscripts denoting the reference frames, s for stator, g for general, we can write:
$$
\begin{aligned}
\underline{v}^s_s & = \underline{v}^g_s e^{j\rho_s} \\
\underline{i}^s_s & = \underline{i}^g_s e^{j\rho_s} \\
\underline{\psi}^s_s & = \underline{\psi}^g_s e^{j\rho_s} \\
\frac{d\underline{\psi}^s_s}{dt}  & = \frac{d (\underline{\psi}^g_s e^{j\rho_s} )}{dt}  = 
\frac{d\underline{\psi}^g_s}{dt}  e^{j\rho_s} + \underline{\psi}^g_s j \omega_g e^{j\rho_s},
\omega_g = \frac{d\rho_s}{dt} \\
\end{aligned}
$$
By inserting these in the stator equation above, we get:

$$
\begin{aligned}
\underline{v}^s_s & = R_s \underline{i}^s_s + \frac{d\underline{\psi}^s_s}{dt}  \\
\underline{v}^g_s e^{j\rho_s} & = R_s \underline{i}^g_s e^{j\rho_s} + \frac{d\underline{\psi}^g_s}{dt}  e^{j\rho_s} + \underline{\psi}^g_s j \omega_g e^{j\rho_s}  \\
\underline{v}^g_s  & = R_s \underline{i}^g_s  + \frac{d\underline{\psi}^g_s}{dt}   + j\underline{\psi}^g_s  \omega_g   \\
\end{aligned}
$$


### Rotor Equation

The rotor equation in the rotor reference frame is:
$$
\begin{aligned}
\underline{v}_r & = R_r \underline{i}_r + \frac{d\underline{\psi}_r}{dt}  \\
\end{aligned}
$$
We want to express this in a general reference frame, where $\rho_r$ is the angle from the rotor fixed frame to the general reference frame. With the superscripts denoting the reference frames, r for rotor, g for general, we can write:
$$
\begin{aligned}
\underline{v}^r_r & = \underline{v}^g_r e^{j\rho_r} \\
\underline{i}^r_r & = \underline{i}^g_r e^{j\rho_r} \\
\underline{\psi}^r_r & = \underline{\psi}^g_r e^{j\rho_r} \\
\frac{d\underline{\psi}^r_r}{dt}  & = \frac{d (\underline{\psi}^g_r e^{j\rho_r} )}{dt}  = 
\frac{d\underline{\psi}^g_r}{dt}  e^{j\rho_r} + \underline{\psi}^g_r j (\omega_g-\omega_r) e^{j\rho_r},
\omega_g-\omega_r = \frac{d\rho_r}{dt} \\
\end{aligned}
$$
By inserting these in the rotor equation above, we get:

$$
\begin{aligned}
\underline{v}^r_r & = R_r \underline{i}^r_r + \frac{d\underline{\psi}^r_r}{dt}  \\
\underline{v}^g_r e^{j\rho_r} & = R_r \underline{i}^g_r e^{j\rho_r} + \frac{d\underline{\psi}^g_r}{dt}  e^{j\rho_r} + \underline{\psi}^g_r j (\omega_g-\omega_r) e^{j\rho_r}  \\
\underline{v}^g_r  & = R_r \underline{i}^g_r  + \frac{d\underline{\psi}^g_r}{dt}   + j \underline{\psi}^g_r  (\omega_g-\omega_r)  \\
\end{aligned}
$$

## Voltage equations in a rotating dq-reference frame

$$
\begin{aligned}
\underline{v}_s  & = R_s \underline{i}_s  + \frac{d\underline{\psi}_s}{dt}   + j\underline{\psi}_s  \omega_{dq}   \\
\underline{v}_r  & = R_r \underline{i}_r  + \frac{d\underline{\psi}_r}{dt}   + j\underline{\psi}_r  (\omega_{dq}-\omega_r)  \\
\end{aligned}
$$

### Flux Equations

$$
\begin{bmatrix} \psi_s\\ \psi_r \end{bmatrix} = \begin{bmatrix} L_s & L_m\\ L_m & L_r \end{bmatrix} \begin{bmatrix} i_s\\ i_r \end{bmatrix}
$$ $$
\begin{aligned}
L_s & = L_m + L_{s\sigma} \\
L_r & = L_m + L_{r\sigma} \\
\end{aligned}
$$

## Torque Equations

The electrical torque can be expressed in terms of cross-product as:
$$
T_e = - \frac{3}{2}N_{pp}L_m(\underline{i}_s  \times \underline{i}_r)
$$

## Rotor-flux Oriented Model

For the rotor-flux Oriented Model, the d-axis is oriented with the rotor flux, so the rotor-flux has no q-axis component.

The rotor magnetizing current $\underline{i}_{mr}$ is defined as:

$$
\underline{i}_{mr} = \frac{\underline{\psi}_r}{L_m}= \frac{L_m\underline{i}_s+L_r\underline{i}_r}{L_m}
= \underline{i}_s+ \frac{L_r}{L_m}\underline{i}_r
$$

$$
\underline{i}_r = \frac{L_m}{L_r} (\underline{i}_{mr} -  \underline{i}_s)
$$
The stator flux can be calculated as:
$$
\begin{aligned}
\underline{\psi}_s
& = L_s\underline{i}_s + L_m\underline{i}_r \\
& = L_s\underline{i}_s + L_m \frac{L_m}{L_r} (\underline{i}_{mr} -  \underline{i}_s) \\
& =  \frac{L^2_m}{L_r}\underline{i}_{mr}  + L_s\underline{i}_s - \frac{L^2_m}{L_r}  \underline{i}_s \\
& =  \frac{L^2_m}{L_r}\underline{i}_{mr}  + L_s(1 - \frac{L^2_m}{L_s L_r} ) \underline{i}_s \\
& =  \frac{L^2_m}{L_r}\underline{i}_{mr}  + \sigma L_s \underline{i}_s  \\
\end{aligned}
$$

the leakage constant being defined as: $\sigma=1 - \frac{L^2_m}{L_s L_r}$

### Rotor voltage equation (rotor-flux oriented)

$$
\begin{aligned}
\underline{v}^{mr}_r  & = R_r \underline{i}^{mr}_r  + \frac{d\underline{\psi}^{mr}_r}{dt} + j (\omega_{mr}-\omega_r) \underline{\psi}^{mr}_r    \\
& = R_r  \frac{L_m}{L_r} (\underline{i}_{mr} -  \underline{i}_s) + \frac{d ( L_m \underline{i}_{mr}) }{dt} + j (\omega_{mr}-\omega_r) L_m \underline{i}_{mr} \\
& =  -\underline{i}_s R_r  \frac{L_m}{L_r}  + L_m \frac{d  \underline{i}_{mr} }{dt} + R_r  \frac{L_m}{L_r} \underline{i}_{mr}  + j (\omega_{mr}-\omega_r) L_m \underline{i}_{mr} \\
\end{aligned}
$$

$$
\begin{aligned}
\frac{L_r}{R_r L_m} \underline{v}^{mr}_r  & =  -\underline{i}^{mr}_s   + \frac{L_r}{R_r} \frac{d  \underline{i}_{mr} }{dt} + \underline{i}_{mr}  + j (\omega_{mr}-\omega_r) \frac{L_r}{R_r} \underline{i}_{mr} \\
\frac{L_r}{R_r L_m} \underline{v}^{mr}_r +\underline{i}^{mr}_s  & =  \frac{L_r}{R_r} \frac{d  \underline{i}_{mr} }{dt} + \underline{i}_{mr}  + j (\omega_{mr}-\omega_r) \frac{L_r}{R_r} \underline{i}_{mr} \\
\end{aligned}
$$


$$
\begin{aligned}
\frac{L_r}{R_r L_m} v_{rd} +i_{sd}  & =  \frac{L_r}{R_r} \frac{d  i_{mr} }{dt} + i_{mr} \\
\frac{L_r}{R_r L_m} v_{rq} +i_{sq}  & =  (\omega_{mr}-\omega_r) \frac{L_r}{R_r} i_{mr} \\
\end{aligned}
$$


### stator voltage equation (rotor-flux oriented)

$$
\begin{aligned}
\underline{v}^{mr}_s & = R_s \underline{i}^{mr}_s  + \frac{d\underline{\psi}^{mr}_s}{dt}   + j\omega_{mr}  \underline{\psi}^{mr}_s  \\
 & = R_s \underline{i}^{mr}_s  + \frac{d}{dt}(\frac{L^2_m}{L_r}\underline{i}^{mr}_{mr}  + \sigma L_s \underline{i}_s)   + j\omega_{mr}  (\frac{L^2_m}{L_r}\underline{i}^{mr}_{mr}  + \sigma L_s \underline{i}_s)  \\
 & = R_s \underline{i}^{mr}_s  + \frac{d}{dt}( (1-\sigma)L_s i_{mr}  + \sigma L_s \underline{i}_s)   + j\omega_{mr}  ((1-\sigma)L_s i_{mr}  + \sigma L_s \underline{i}_s)  \\
\end{aligned}
$$


$$
\begin{aligned}
v_{sd} & = R_s i_{sd}  + \sigma L_s \frac{d i_{sd}}{dt} + (1-\sigma)L_s \frac{d i_{mr}}{dt} - \omega_{mr}     \sigma L_s i_{sq}  \\
v_{sq} & = R_s i_{sq}  + \sigma L_s \frac{d i_{sq}}{dt} + \omega_{mr}  ((1-\sigma)L_s i_{mr}  + \sigma L_s i_{sd})  \\
\end{aligned}
$$



