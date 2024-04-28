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

% unit impulse contiuous time signal
t1 = (-1:0.001:1);
impulse=t1==0;
subplot(2,1,1);
plot(t1,impulse)
title('unit impulse signal');
xlabel('Time (seconds)');
ylabel('Amplitude');
% unit impulse discrete time signal
t2 = (-1:0.2:1);
impulse=t2==0;
subplot(2,1,2);
stem(t2,impulse)
title('unit impulse signal');
xlabel('Time (seconds)');
ylabel('Amplitude');

