

Vd = 1100;
angle = 0:2*pi/100:6*pi/3-1e-6;
vmax = Vd/sqrt(3);
vref = vmax;
mi = vref/(Vd/sqrt(3));

vref_A =  vref*cos(angle);
vref_B =  vref*sin(angle);

d0 = zeros(1,length(angle));
da = zeros(1,length(angle));
db = zeros(1,length(angle));
d1 = zeros(1,length(angle));
d2 = zeros(1,length(angle));
d3 = zeros(1,length(angle));

for ii = 1:length(angle)

  angle_sector = mod(angle(ii),pi/3);
%  db(ii) = sin(angle_sector)*vref/(Vd/sqrt(3));
%  da(ii) = sqrt(3)/2*cos(angle_sector)*vref/(Vd/sqrt(3)) - db(ii)/2;
%  da(ii) = sqrt(3)/2*mi*cos(angle_sector) - db(ii)/2;
  da(ii) = mi*sin(pi/3-angle_sector);
  db(ii) = mi*sin(angle_sector);
  d0(ii) = (1 - da(ii) - db(ii))/2;

  if angle(ii) < pi/3
    d1(ii) = d0(ii) + da(ii) + db(ii);
    d2(ii) = d0(ii) + db(ii);
    d3(ii) = d0(ii);
  elseif angle(ii) < 2*pi/3
    d1(ii) = d0(ii) + da(ii);
    d2(ii) = d0(ii) + da(ii) + db(ii);
    d3(ii) = d0(ii);
  elseif angle(ii) < 3*pi/3
    d1(ii) = d0(ii);
    d2(ii) = d0(ii) + da(ii) + db(ii);
    d3(ii) = d0(ii) + db(ii);
  elseif angle(ii) < 4*pi/3
    d1(ii) = d0(ii);
    d2(ii) = d0(ii) + da(ii);
    d3(ii) = d0(ii) + da(ii) + db(ii);
  elseif angle(ii) < 5*pi/3
    d1(ii) = d0(ii) + db(ii);
    d2(ii) = d0(ii);
    d3(ii) = d0(ii) + da(ii) + db(ii);
  else%if angle(ii) < 6*pi/3
    d1(ii) = d0(ii) + da(ii) + db(ii);
    d2(ii) = d0(ii);
    d3(ii) = d0(ii) + da(ii);
  endif
end


subplot(3,1,1);
plot(angle,d1);
subplot(3,1,2);
plot(angle,d2);
subplot(3,1,3);
plot(angle,d3);



