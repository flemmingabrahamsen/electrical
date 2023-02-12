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
$L_m$: Magnetizing inductance.\
$L_m$: Magnetizing inductance.\
$L_{s\sigma}$: Stator leakage inductance.\
$L_{r\sigma}$: Rotor leakage inductance. \
$L_s$: Stator inductance. $L_s = L_m + L_{s\sigma}$\
$L_r$: Rotor inductance. $L_r = L_m + L_{r\sigma}$\
$1-\frac{L^2_m}{L_sL_r}$: total leakage coefficient. \
$ms$: magnetizing-stator super/subscript, stator flux oriented reference frame. \
$mr$: magnetizing-rotor super/subscript, rotor flux oriented reference frame. \
$g$: super/subscript, general reference frame. \
$\tau_{em}$: electro-magnetic torque. \
$N_{pp}$: pole-pair number. \

## Introduction


The general dynamic machine model in a rotating reference frame is first presented. Then it is shown how it is derived from the stationary reference frame equations.

The rotor-flux oriented reference frame equations are derived. This particular model is often used for vector-oriented control from the stator side.



## General Machine Model

In short, the dynamics of the inductions machine is described by this dynamic vector model:

$$
\begin{aligned}
\underline{v}_s & = R_s \underline{i}_s + \frac{d\underline{\psi}_s}{dt} + j \omega_g \underline{\psi}_s  \\
\underline{v}_r & = R_r \underline{i}_r + \frac{d\underline{\psi}_r}{dt} + j (\omega_g-\omega_m) \underline{\psi}_r \\
\underline{\psi}_s & = L_s \underline{i}_s + L_m \underline{i}_r\\
\underline{\psi}_r & = L_m \underline{i}_s + L_r \underline{i}_r\\
\tau_{em} &= - \frac{3}{2}N_{pp}L_m(\underline{i}_s  \times \underline{i}_r)
\end{aligned}
(\#eq:genDqMdl)
$$






This model is with motor sign, in a general reference frame g.

In this notation all quantities are seen from the same side of the machine. So, when seen from the stator, the rotor current in not the physical rotor current, but the rotor current as seen from the stator. The same goes for flux, voltage and impedance. So we don't use a apostrophe to note that rotor quantities are transferred values, as it is sometimes done.

This is not a special issue for a squirrel cage machine, where we do not have easy access to rotor quantities anyway, by we practically always look the the machine from the stator. But for the doubly-fed induction machine, where we have access to both the stator and the rotor circuit, special care must be taken to transfer values from one side to the other.



<!-- 
### Flux Equations

$$
\begin{bmatrix} \psi_s\\ \psi_r \end{bmatrix} = \begin{bmatrix} L_s & L_m\\ L_m & L_r \end{bmatrix} \begin{bmatrix} i_s\\ i_r \end{bmatrix}
$$
-->


### Stator Equation

The stator equation in the stator reference frame is:
$$
\begin{aligned}
\underline{v}_s & = R_s \underline{i}_s + \frac{d\underline{\psi}_s}{dt}  \\
\end{aligned}
(\#eq:statorVoltStat)
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
(\#eq:statorVoltStat1)
$$
By inserting these in the stator equation above, we get:

$$
\begin{aligned}
\underline{v}^s_s & = R_s \underline{i}^s_s + \frac{d\underline{\psi}^s_s}{dt}  \\
\underline{v}^g_s e^{j\rho_s} & = R_s \underline{i}^g_s e^{j\rho_s} + \frac{d\underline{\psi}^g_s}{dt}  e^{j\rho_s} + \underline{\psi}^g_s j \omega_g e^{j\rho_s}  \\
\underline{v}^g_s  & = R_s \underline{i}^g_s  + \frac{d\underline{\psi}^g_s}{dt}   + j\underline{\psi}^g_s  \omega_g   \\
\end{aligned}
(\#eq:statorVoltStat2)
$$
this is the general stator equation, see \@ref(eq:genDqMdl)

### Rotor Equation

The rotor equation in the rotor reference frame is:
$$
\begin{aligned}
\underline{v}_r & = R_r \underline{i}_r + \frac{d\underline{\psi}_r}{dt}  \\
\end{aligned}
(\#eq:rotorVoltStat1)
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
(\#eq:rotorVoltStat2)
$$
By inserting these in the rotor equation above, we get:

$$
\begin{aligned}
\underline{v}^r_r & = R_r \underline{i}^r_r + \frac{d\underline{\psi}^r_r}{dt}  \\
\underline{v}^g_r e^{j\rho_r} & = R_r \underline{i}^g_r e^{j\rho_r} + \frac{d\underline{\psi}^g_r}{dt}  e^{j\rho_r} + \underline{\psi}^g_r j (\omega_g-\omega_r) e^{j\rho_r}  \\
\underline{v}^g_r  & = R_r \underline{i}^g_r  + \frac{d\underline{\psi}^g_r}{dt}   + j \underline{\psi}^g_r  (\omega_g-\omega_r)  \\
\end{aligned}
(\#eq:rotorVoltStat3)
$$

this is the general rotor equation, see \@ref(eq:genDqMdl)



### Torque Equations

The electrical torque can be expressed in terms of cross-product as:
$$
\begin{aligned}
\tau_{em} &= - \frac{3}{2}N_{pp}L_m(\underline{i}_s  \times \underline{i}_r) \\
&= - \frac{3}{2}N_{pp}L_m(i_{sd}i_{rq} -  i_{sq}i_{rd}) \\
&= - \frac{3}{2}N_{pp}L_m Im(\underline{i}^*_s  \cdot \underline{i}_r) \\
\end{aligned}
(\#eq:torque1)
$$

The last line contains the imaginary part of the complex-conjugate stator current and the rotor current.
The torque can be calculated in various other ways, to be elaborated.


## Rotor-flux Oriented Model

For the rotor-flux oriented Model, the d-axis is oriented with the rotor flux, so the rotor-flux has no q-axis component.

The rotor magnetizing current $\underline{i}_{mr}$ is defined as:

$$
\underline{i}_{mr} = \frac{\underline{\psi}_r}{L_m}= \frac{L_m\underline{i}_s+L_r\underline{i}_r}{L_m}
= \underline{i}_s+ \frac{L_r}{L_m}\underline{i}_r
(\#eq:rotorFluxFlux1)
$$

$$
\underline{i}_r = \frac{L_m}{L_r} (\underline{i}_{mr} -  \underline{i}_s)
(\#eq:rotorFluxFlux2)
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
(\#eq:rotorFluxFlux3)
$$

the leakage constant being defined as: $\sigma=1 - \frac{L^2_m}{L_s L_r}$

### Rotor voltage equation (rotor-flux oriented)

$$
\begin{aligned}
\underline{v}^{mr}_r  & = R_r \underline{i}^{mr}_r  + \frac{d\underline{\psi}^{mr}_r}{dt} + j (\omega_{mr}-\omega_r) \underline{\psi}^{mr}_r    \\
& = R_r  \frac{L_m}{L_r} (\underline{i}_{mr} -  \underline{i}_s) + \frac{d ( L_m \underline{i}_{mr}) }{dt} + j (\omega_{mr}-\omega_r) L_m \underline{i}_{mr} \\
& =  -\underline{i}_s R_r  \frac{L_m}{L_r}  + L_m \frac{d  \underline{i}_{mr} }{dt} + R_r  \frac{L_m}{L_r} \underline{i}_{mr}  + j (\omega_{mr}-\omega_r) L_m \underline{i}_{mr} \\
\end{aligned}
(\#eq:rotorFluxRotVolt1)
$$

$$
\begin{aligned}
\frac{L_r}{R_r L_m} \underline{v}^{mr}_r  & =  -\underline{i}^{mr}_s   + \frac{L_r}{R_r} \frac{d  \underline{i}_{mr} }{dt} + \underline{i}_{mr}  + j (\omega_{mr}-\omega_r) \frac{L_r}{R_r} \underline{i}_{mr} \\
\frac{L_r}{R_r L_m} \underline{v}^{mr}_r +\underline{i}^{mr}_s  & =  \frac{L_r}{R_r} \frac{d  \underline{i}_{mr} }{dt} + \underline{i}_{mr}  + j (\omega_{mr}-\omega_r) \frac{L_r}{R_r} \underline{i}_{mr} \\
\end{aligned}
(\#eq:rotorFluxRotVolt2)
$$


$$
\begin{aligned}
\frac{L_r}{R_r L_m} v_{rd} +i_{sd}  & =  \frac{L_r}{R_r} \frac{d  i_{mr} }{dt} + i_{mr} \\
\frac{L_r}{R_r L_m} v_{rq} +i_{sq}  & =  (\omega_{mr}-\omega_r) \frac{L_r}{R_r} i_{mr} \\
\end{aligned}
(\#eq:rotorFluxRotVolt3)
$$


### Stator voltage equation (rotor-flux oriented)

$$
\begin{aligned}
\underline{v}^{mr}_s & = R_s \underline{i}^{mr}_s  + \frac{d\underline{\psi}^{mr}_s}{dt}   + j\omega_{mr}  \underline{\psi}^{mr}_s  \\
 & = R_s \underline{i}^{mr}_s  + \frac{d}{dt}(\frac{L^2_m}{L_r}\underline{i}^{mr}_{mr}  + \sigma L_s \underline{i}_s)   + j\omega_{mr}  (\frac{L^2_m}{L_r}\underline{i}^{mr}_{mr}  + \sigma L_s \underline{i}_s)  \\
 & = R_s \underline{i}^{mr}_s  + \frac{d}{dt}( (1-\sigma)L_s i_{mr}  + \sigma L_s \underline{i}_s)   + j\omega_{mr}  ((1-\sigma)L_s i_{mr}  + \sigma L_s \underline{i}_s)  \\
\end{aligned}
(\#eq:rotorFluxStaVolt1)
$$


$$
\begin{aligned}
v_{sd} & = R_s i_{sd}  + \sigma L_s \frac{d i_{sd}}{dt} + (1-\sigma)L_s \frac{d i_{mr}}{dt} - \omega_{mr}     \sigma L_s i_{sq}  \\
v_{sq} & = R_s i_{sq}  + \sigma L_s \frac{d i_{sq}}{dt} + \omega_{mr}  ((1-\sigma)L_s i_{mr}  + \sigma L_s i_{sd})  \\
\end{aligned}
(\#eq:rotorFluxStaVolt2)
$$

### Torque equation (rotor-flux oriented)

The electrical torque can be expressed in terms of cross-product as:
$$
\begin{aligned}
\tau_{em} &= - \frac{3}{2}N_{pp}L_m(i_{sd}i_{rq} -  i_{sq}i_{rd}) \\
&=  \frac{3}{2}N_{pp}L_m i_{rd}  i_{sq} \\
\end{aligned}
(\#eq:rotorFluxTorque1)
$$



