# Filters

This chapter gives an overview of the most used filters.

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



<!--
$$
\begin{aligned}
v_\alpha &=   v_a\\
v_\beta &=  \frac{1}{\sqrt{3}} (v_b-v_c) \\
\end{aligned}
(\#eq:abcAB2)
$$
-->


