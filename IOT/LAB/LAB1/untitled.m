f = 2; %frequency of modulating signal 
T = 1/f; %time period in sec 
t = 0:0.01:6; 

%Sinusoidal signal 
x1 = sin(2*pi*f*t); 
subplot(3,2,1); 
plot(t,x1); 
title('Sinusoidal Signal'); 
ylabel("x1(t)"),xlabel("t");

%Square signal 
x2=square(t); 
subplot(3,2,2); 
plot(t,x2); 
title('Square Signal'); 

%exponential signal 
x3=exp(-2*t); 
subplot(3,2,3); 
plot(t,x3); 
title('Exponential Signal'); 

%Sawtooth signal 
x4=sawtooth(t); 
subplot(3,2,4); 
plot(t,x4); 
title("sawtooth");

%sin(2*pi*t/T).*exp(-2*t) 
x5 = sin(2*3.14*t/T)*exp(-2*t);
subplot(3,2,3)
plot(t,x5);
title("X1 = sin(2*pi*t/T).*exp(-2*t)")

%2*cos(2*pi*t/T2).*sin(2*pi*t/T3)
x5 =2*cos(2*3.14*t/T2)*sin(2*3.14*t/T3));
subplot(3,2,3)
plot(t,x5);
title("2*cos(2*pi*t/T2).*sin(2*pi*t/T3)")