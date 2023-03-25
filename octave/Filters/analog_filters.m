%
clear
clc
close all

pkg load control

s = tf('s');

cutoff = 1;
tau = 1/10^cutoff;
wc = 1/tau;
omega_arr = logspace(cutoff-2, cutoff+2, 2000);

omega_max = 10^(cutoff+2);
Ts = 0.5*(2*pi)/omega_max;
#Ts = tau/100;



## lpf 1

figure(1);
lpf1 = 1/(tau*s + 1);
[magn, phase] = bode(lpf1, omega_arr);

subplot(2,1,1)
semilogx(omega_arr, 20*log10(magn(:)))
set(gca,'FontSize',12,'Fontname','arial');
title('Analog 1st order low-pass filter, tau=0.1 s')
ylabel('Magnitude [dB]')
grid on;
ylim([-50 10]);
subplot(2,1,2)
semilogx(omega_arr,phase(:))
set(gca,'FontSize',12,'Fontname','arial');
xlabel('frequency [rad/s]')
ylabel('Phase [deg]')
grid on;
#print -dpng lpf_1st.png

## hpf

figure(2);
hpf1 = tau*s/(tau*s + 1);
[magn, phase] = bode(hpf1, omega_arr);

subplot(2,1,1)
semilogx(omega_arr, 20*log10(magn(:)))
set(gca,'FontSize',12,'Fontname','arial');
title('Analog 1st order high-pass filter, tau=0.1 s')
ylabel('Magnitude [dB]')
grid on;
ylim([-50 10]);
subplot(2,1,2)
semilogx(omega_arr,phase(:))
set(gca,'FontSize',12,'Fontname','arial');
xlabel('frequency [rad/s]')
ylabel('Phase [deg]')
grid on;
#print -dpng hpf_1st.png


## lpf 2

figure(3);
zeta = 0.7;
lpf2 = 1/((tau*s)^2 + 2*zeta*tau*s + 1);
#lpf2 = wc^2/((s)^2 + 2*zeta*wc*s + wc^2);
[magn, phase] = bode(lpf2, omega_arr);

subplot(2,1,1)
semilogx(omega_arr, 20*log10(magn(:)))
set(gca,'FontSize',12,'Fontname','arial');
title('Analog 2nd order low-pass filter, \tau=0.1 s, \zeta=0.7')
ylabel('Magnitude [dB]')
grid on;
ylim([-90 10]);
subplot(2,1,2)
semilogx(omega_arr,phase(:))
set(gca,'FontSize',12,'Fontname','arial');
xlabel('frequency [rad/s]')
ylabel('Phase [deg]')
grid on;
#print -dpng lpf_2nd.png

## hpf 2

figure(4);
zeta = 0.7;
#hpf2 = (tau*s)^2/((tau*s)^2 + 2*zeta*tau*s + 1);
hpf2 = s^2/(s^2 + 2*zeta*wc*s + wc^2);
[magn, phase] = bode(hpf2, omega_arr);

subplot(2,1,1)
semilogx(omega_arr, 20*log10(magn(:)))
set(gca,'FontSize',12,'Fontname','arial');
title('Analog 2nd order high-pass filter, \tau=0.1 s, \zeta=0.7')
ylabel('Magnitude [dB]')
grid on;
ylim([-90 10]);
subplot(2,1,2)
semilogx(omega_arr,phase(:))
set(gca,'FontSize',12,'Fontname','arial');
xlabel('frequency [rad/s]')
ylabel('Phase [deg]')
grid on;
#print -dpng hpf_2nd.png



## bpf

figure(5);
zeta = 0.7;
bpf = 2*zeta*wc*s/(s^2 + 2*zeta*wc*s + wc^2);
[magn, phase] = bode(bpf, omega_arr);

subplot(2,1,1)
semilogx(omega_arr, 20*log10(magn(:)))
set(gca,'FontSize',12,'Fontname','arial');
title('Analog band-pass filter, tau=0.1 s, zeta=0.7')
ylabel('Magnitude [dB]')
grid on;
ylim([-40 10]);
subplot(2,1,2)
semilogx(omega_arr,phase(:))
set(gca,'FontSize',12,'Fontname','arial');
xlabel('frequency [rad/s]')
ylabel('Phase [deg]')
grid on;
#print -dpng bpf.png



## bsf

figure(6);

zeta = 0.7;
damping = 1/100;
bsf = (s^2 + 2*damping*zeta*wc*s + wc^2)/(s^2 + 2*zeta*wc*s + wc^2);
[magn, phase] = bode(bsf, omega_arr);

subplot(2,1,1)
semilogx(omega_arr, 20*log10(magn(:)))
set(gca,'FontSize',12,'Fontname','arial');
title('Analog band-stop filter, tau=0.1 s, zeta=0.7, damping 40dB')
ylabel('Magnitude [dB]')
grid on;
ylim([-50 10]);
subplot(2,1,2)
semilogx(omega_arr,phase(:))
set(gca,'FontSize',12,'Fontname','arial');
xlabel('frequency [rad/s]')
ylabel('Phase [deg]')
grid on;



## integrator 1

figure(7);

integrator = tau/(tau*s + 1);
[magn, phase] = bode(integrator, omega_arr);

subplot(2,1,1)
semilogx(omega_arr, 20*log10(magn(:)))
set(gca,'FontSize',12,'Fontname','arial');
title('Integrator with finite dc-gain, tau=0.1 s')
ylabel('Magnitude [dB]')
grid on;
ylim([-70 -10]);
subplot(2,1,2)
semilogx(omega_arr,phase(:))
set(gca,'FontSize',12,'Fontname','arial');
xlabel('frequency [rad/s]')
ylabel('Phase [deg]')
grid on;
#print -dpng integrator.png


## discrete lpf 1

figure(8);
lpf1_d_forward = tf([wc*Ts],[1 -(1-wc*Ts)],Ts);
lpf1_d_used = tf([wc*Ts 0],[1 -(1-wc*Ts)],Ts);
lpf1_d_bilin = tf((wc*Ts)/(2+wc*Ts)*[1 1],[1 -(2-wc*Ts)/(2+wc*Ts)],Ts);

[magn, phase] = bode(lpf1, omega_arr);
[magn_d_forward, phase_d_forward] = bode(lpf1_d_forward, omega_arr);
[magn_d_used, phase_d_used] = bode(lpf1_d_used, omega_arr);
[magn_d_bilin, phase_d_bilin] = bode(lpf1_d_bilin, omega_arr);

subplot(2,1,1)
semilogx(omega_arr, 20*log10(magn_d_forward(:)),omega_arr, 20*log10(magn_d_used(:)),omega_arr, 20*log10(magn_d_bilin(:)))
#semilogx(omega_arr, 20*log10(magn_d_bilin(:)))

set(gca,'FontSize',12,'Fontname','arial');
title('1st order discrete low-pass filters, tau=0.1 s')
ylabel('Magnitude [dB]')
grid on;
ylim([-50 10]);
subplot(2,1,2)
semilogx(omega_arr,phase_d_forward(:), omega_arr,phase_d_used(:), omega_arr,phase_d_bilin(:))
#semilogx(omega_arr,phase_d_bilin(:))
set(gca,'FontSize',12,'Fontname','arial');
xlabel('frequency [rad/s]')
ylabel('Phase [deg]')
grid on;
legend('Forward Euler','Forward Euler Modified','Bilinear','location', 'southwest');
#print -dpng lpf_1st_disc.png



