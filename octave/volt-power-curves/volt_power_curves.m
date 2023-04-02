clear
close all
clc


figure(1);

phi_vec = [acos(0.9) acos(0.95) acos(1.0) -acos(0.95) -acos(0.9) ];


for ii = 1:length(phi_vec)

  phi = phi_vec(ii);
  tanphi = tan(phi);

  clear p v
  pmax = 0.5*( -tanphi+sqrt(tanphi^2+1) );
  pvec = 0:0.001:pmax;
  pvec = [pvec pmax];

  v = sqrt((0.5 - pvec*tanphi - sqrt(1/4 - pvec.^2 - pvec*tanphi) ) );
  ptot = pvec;
  vtot = v;

  v = sqrt((0.5 - pvec*tanphi + sqrt(1/4 - pvec.^2 - pvec*tanphi) ) );
  ptot = [ptot fliplr(pvec)];
  vtot = [vtot fliplr(v)];

  plot(ptot,vtot);
  hold on;

end

grid on;
legend('PF=0.90 ind','PF=0.95 ind','PF=1.0','PF=0.95 cap','PF=0.90 cap','location','southeast');
xlim([0 1.0]);
ylim([0 1.2]);
xlabel('active power p.u.');
ylabel('voltage load p.u.');

#print -dpng PV-diagram.png





figure(2);

phi_vec = [acos(0.9) acos(0.95) acos(1.0) -acos(0.95) -acos(0.9) ];


for ii = 1:length(phi_vec)

  phi = phi_vec(ii);
  tanphi = tan(phi);

  clear p v
  pmax = 0.5*( -tanphi+sqrt(tanphi^2+1) );
  pvec = 0:0.001:pmax;
  pvec = [pvec pmax];
  qvec = pvec*tanphi;

  v = sqrt((0.5 - pvec*tanphi - sqrt(1/4 - pvec.^2 - pvec*tanphi) ) );
  qtot = qvec;
  vtot = v;

  v = sqrt((0.5 - pvec*tanphi + sqrt(1/4 - pvec.^2 - pvec*tanphi) ) );
  qtot = [qtot fliplr(qvec)];
  vtot = [vtot fliplr(v)];

  plot(qtot,vtot);
  hold on;

end

grid on;
legend('PF=0.90 ind','PF=0.95 ind','PF=1.0','PF=0.95 cap','PF=0.90 cap','location','southwest');
ylim([0 1.2]);
xlabel('reactive power p.u.');
ylabel('voltage load p.u.');






##
##
#####
##
##figure(2);
##
##phi_vec = [acos(1)];# acos(0.95) acos(1.0) -acos(0.95) -acos(0.9) ];
##
##for ii = 1:length(phi_vec)
##
##  phi = phi_vec(ii);
##  tanphi = tan(phi);
##
##  clear q v
##  qmax = 0.5*tanphi*( -tanphi+sqrt(tanphi^2+1) );
##  q = 0:0.001:qmax;
##  q = [q qmax];
##
##  v = sqrt((0.5 - q - sqrt(1/4 - (q/tanphi).^2 - q) ) );
##  qtot = q;
##  vtot = v;
##
##  v = sqrt((0.5 - q + sqrt(1/4 - (q/tanphi).^2 - q) ) );
##  qtot = [qtot fliplr(q)];
##  vtot = [vtot fliplr(v)];
##
##  plot(qtot,vtot);
##  hold on;
##
##end



