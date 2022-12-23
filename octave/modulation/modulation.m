

Vd = 1100;
deg = 0:1:360;
angle = deg*pi/180;
##angle = 0:2*pi/100:6*pi/3-1e-6;
vmax = Vd/sqrt(3);
vref = vmax;
mi = vref/(Vd/sqrt(3));

vref_A =  vref*cos(angle);
vref_B =  vref*sin(angle);

d0 = zeros(1,length(angle));
d1 = zeros(1,length(angle));
d2 = zeros(1,length(angle));
da = zeros(1,length(angle));
db = zeros(1,length(angle));
dc = zeros(1,length(angle));

for ii = 1:length(angle)

  if angle(ii) < pi/3
    sector = 1;
  elseif angle(ii) < 2*pi/3
    sector = 2;
    angle_sector = angle(ii) - pi/3;
  elseif angle(ii) < 3*pi/3
    sector = 3;
    angle_sector = angle(ii) - pi/3;
  elseif angle(ii) < 4*pi/3
    sector = 4;
  elseif angle(ii) < 5*pi/3
    sector = 5;
  elseif angle(ii) < 6*pi/3
    sector = 6;
  endif

  angle_sector = angle(ii) - (sector-1)*pi/3;

##  angle_sector = mod(angle(ii), pi/3);
%  d2(ii) = sin(angle_sector)*vref/(Vd/sqrt(3));
%  d1(ii) = sqrt(3)/2*cos(angle_sector)*vref/(Vd/sqrt(3)) - d2(ii)/2;
%  d1(ii) = sqrt(3)/2*mi*cos(angle_sector) - d2(ii)/2;
  d1(ii) = mi*sin(pi/3-angle_sector);
  d2(ii) = mi*sin(angle_sector);
  d0(ii) = (1 - d1(ii) - d2(ii))/2;

  if sector == 1
    da(ii) = d0(ii) + d2(ii) + d1(ii);
    db(ii) = d0(ii) + d2(ii);
    dc(ii) = d0(ii);
  elseif sector == 2
    da(ii) = d0(ii) + d1(ii);
    db(ii) = d0(ii) + d1(ii) + d2(ii);
    dc(ii) = d0(ii);
  elseif sector == 3
    da(ii) = d0(ii);
    db(ii) = d0(ii) + d2(ii) + d1(ii);
    dc(ii) = d0(ii) + d2(ii);
  elseif sector == 4
    da(ii) = d0(ii);
    db(ii) = d0(ii) + d1(ii);
    dc(ii) = d0(ii) + d1(ii) + d2(ii);
  elseif sector == 5
    da(ii) = d0(ii) + d2(ii);
    db(ii) = d0(ii);
    dc(ii) = d0(ii) + d1(ii) + d2(ii);
  else ## sector == 6
    da(ii) = d0(ii) + d1(ii) + d2(ii);
    db(ii) = d0(ii);
    dc(ii) = d0(ii) + d1(ii);
  endif
end

##subplot(3,1,1);
##plot(angle,da);
##subplot(3,1,2);
##plot(angle,db);
##subplot(3,1,3);
##plot(angle,dc);


figure;

subplot(3,1,1);
plot(deg,da);
xlim([0 360])
ylabel('a');
title('duty-cycle');

subplot(3,1,2);
plot(deg,db);
xlim([0 360])
ylabel('b');

subplot(3,1,3);
plot(deg,dc);
xlim([0 360])
ylabel('c');
xlabel('angle [deg]');


figure;
deg_60 = (0:1:60);
rad_60 = deg_60*pi/180;
vabc = [cos(rad_60-0*pi/3); cos(rad_60-2*pi/3); cos(rad_60-4*pi/3)];
plot(deg_60,vabc);

##v_svm_1 =  2/sqrt(3)*(vabc(1,:)-0.5*(max(vabc)+min(vabc)));
##plot(deg_60,v_svm_2);

