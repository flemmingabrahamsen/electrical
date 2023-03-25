# Filters

This chapter gives an overview of the most used basic filters, such as low-pass, high-pass, band-pass, band-stop, and integrator.

## Nomenclature
s: Laplace operator.  
$\tau$: time-constant.  
$\omega_c$: Filter cut-off frequency (rad/s).  


## Analog Filters

### Low-pass filter 1st order

The transfer function of a 1st order low-pass filter is:
$$
G(s) =  \frac{1}{\tau s + 1} = \frac{\omega_c}{s + \omega_c}
(\#eq:lpf1)
$$
\begin{figure}
\includegraphics[width=0.8\linewidth]{images/filters/lpf_1st} \caption{Bode-plot example of 1st order low-pass filter.}(\#fig:unnamed-chunk-1)
\end{figure}


### High-pass filter 1st order

The transfer function of a 1st order high-pass filter is:
$$
G(s) =  \frac{\tau s}{\tau s + 1} = \frac{s}{s + \omega_c}
(\#eq:hpf1)
$$
\begin{figure}
\includegraphics[width=0.8\linewidth]{images/filters/hpf_1st} \caption{Bode-plot example of 1st order high-pass filter.}(\#fig:unnamed-chunk-2)
\end{figure}



### Low-pass filter 2nd order

The transfer function of a 2nd order low-pass filter is:
$$
G(s) =  \frac{1}{(\tau s)^2 + 2\zeta \tau s + 1} = \frac{\omega_c^2}{s^2 + 2\zeta \omega_c s + \omega_c^2}
(\#eq:lpf2)
$$

\begin{figure}
\includegraphics[width=0.8\linewidth]{images/filters/lpf_2nd} \caption{Bode-plot example of 2nd order low-pass filter.}(\#fig:unnamed-chunk-3)
\end{figure}



### High-pass filter 2nd order

The transfer function of a 2nd order high-pass filter is:
$$
G(s) =  \frac{(\tau s)^2}{(\tau s)^2 + 2\zeta \tau s + 1} = \frac{s^2}{s^2 + 2\zeta \omega_c s + \omega_c^2}
(\#eq:hpf2)
$$

\begin{figure}
\includegraphics[width=0.8\linewidth]{images/filters/hpf_2nd} \caption{Bode-plot example of 2nd order high-pass filter.}(\#fig:unnamed-chunk-4)
\end{figure}



### Band-pass filter

The transfer function of a band-pass filter is:
$$
G_{bpf}(s) =  \frac{2\zeta \tau s}{(\tau s)^2 + 2\zeta \tau s + 1} = \frac{2\zeta \omega_c s}{s^2 + 2\zeta \omega_c s + \omega_c^2}
(\#eq:bpf)
$$

\begin{figure}
\includegraphics[width=0.8\linewidth]{images/filters/bpf} \caption{Bode-plot example of a band-pass filter.}(\#fig:unnamed-chunk-5)
\end{figure}


### Band-stop filter

The transfer function of a band-stop filter (notch filter) is:
$$
G_{bsf}(s) = \frac{(\tau s)^2 + 2\zeta_n \tau s + 1}{(\tau s)^2 + 2\zeta_d \tau s + 1} 
=\frac{s^2 + 2\zeta_n \omega_c s + \omega_c^2}{s^2 + 2\zeta_d \omega_c s + \omega_c^2}
(\#eq:bsf1)
$$
where $\zeta_n$ and $\zeta_d$ denote the nominator and denominator damping-factors.

The gain at the notch-frequency is:
$$
G_{bsf}(j\omega_c) = \frac{\zeta_n }{\zeta_d }
(\#eq:bsf2)
$$
We can choose to reformulate the transfer-function as:
$$
G_{bsf}(s) = \frac{(\tau s)^2 + 2K_{damp}\zeta \tau s + 1}{(\tau s)^2 + 2\zeta \tau s + 1} 
=\frac{s^2 + 2K_{damp}\zeta \omega_c s + \omega_c^2}{s^2 + 2\zeta \omega_c s + \omega_c^2}
(\#eq:bsf1)
$$
where $K_{damp}$ is a damping factor. For example, if we want 100 times (40 dB) damping  at the notch-frequency, we set $K_{damp} = 0.01$.

\begin{figure}
\includegraphics[width=0.8\linewidth]{images/filters/bsf} \caption{Bode-plot example of a band-stop filter.}(\#fig:unnamed-chunk-6)
\end{figure}


### Integrator with Finite dc-gain

An integrator may be used in control schemes, for example to calculate flux by integrating voltage. This may practically be done by combining the integrator with a high-pass filter to avoid an infinite dc-gain, which can cause problems with measurement offset etc.

The transfer function is:

$$
G(s) =  \frac{\tau s}{(\tau s + 1)s} = \frac{\tau}{\tau s + 1}
(\#eq:int1)
$$

\begin{figure}
\includegraphics[width=0.8\linewidth]{images/filters/integrator} \caption{Bode-plot example of an integrator with finite dc-gain.}(\#fig:unnamed-chunk-7)
\end{figure}

This implementation will not completely remove a dc-offset, but as in this example, with a -20 dB dc-gain, an offset on the input is reduced with a factor 10 on the output. So if any dc-offset should be completely removed, then one more high-pass filter must be added.


## Digital Filters


### Low-pass filter 1st order

Using the forward Euler discretization:

$$
\begin{aligned}
G(s) &=  \frac{\omega_c}{s + \omega_c}, s=\frac{z-1}{T} \\
G(z) &=  \frac{\omega_c}{\frac{z-1}{T} + \omega_c} = \frac{\omega_c T}{z- (1 - \omega_c T)} 
= \frac{\omega_c T z^{-1}}{1- (1 - \omega_c T)z^{-1}} \\
y(k) &=   (1 - \omega_c T)y(k-1)   + \omega_c T u(k-1) \\
\end{aligned}
(\#eq:dlpf1)
$$

An practical alternative to this is to the newest input sample, instead of using the old one. We call it here the modified forward Euler method:

$$
\begin{aligned}
y(k) &= (1 - \omega_c T)y(k-1)   + \omega_c T u(k) \\
G(z) &=  \frac{\omega_c T z}{z- (1 - \omega_c T)} = \frac{\omega_c T }{1- (1 - \omega_c T)z^{-1}} \\
\end{aligned}
(\#eq:dlpf2)
$$


Bilinear transformation:

$$
\begin{aligned}
G(s) &=  \frac{\omega_c}{s + \omega_c}, s=\frac{2}{T} \frac{z-1}{z+1} \\
G(z) &=  \frac{\omega_c}{\frac{2}{T} \frac{z-1}{z+1} + \omega_c}
= \frac{ \frac{\omega_cT}{2}(z+1)}{ (z-1)+ \frac{\omega_cT}{2} (z+1)} 
= \frac{ \frac{\omega_cT}{2}(z+1)}{  (1+\frac{\omega_cT}{2}) z - (1-\frac{\omega_cT}{2})}  \\
 &=   \frac{ \omega_cT(z+1)}{  (2+\omega_cT) z - (2-\omega_cT)} 
 =  \frac{ \frac{\omega_cT}{2+\omega_cT}(z+1)}{   z - \frac{2-\omega_cT}{2+\omega_cT}}  \\
y(k) &=   \left( \frac{2-\omega_cT}{2+\omega_cT} \right) y(k-1)   + \left( \frac{\omega_cT}{2+\omega_cT} \right)  (u(k)+u(k-1)) \\
\end{aligned}
(\#eq:dlpf3)
$$

\begin{figure}
\includegraphics[width=0.8\linewidth]{images/filters/lpf_1st_disc} \caption{Bode-plot example of discrete 1st order low-pass filters, shown up to the nyquist-frequency.}(\#fig:unnamed-chunk-8)
\end{figure}

We see that only the bilinear discretization yields the correct phase at high-frequencies. However, as this is a low-pass filter where typically the important signal is in the pass-region, the simpler forward Euler discretizations are in most cases ok to use.


<!--
$$
\begin{aligned}
v_\alpha &=   v_a\\
v_\beta &=  \frac{1}{\sqrt{3}} (v_b-v_c) \\
\end{aligned}
(\#eq:abcAB2)
$$
-->

