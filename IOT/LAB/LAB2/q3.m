%parameters
fs = 10000;
fm = 35;
fc = 500;
Am = 1;
Ac = 1;
t = (0:.1*fs)/fs;

%carrier and message signals
carrier = Ac*cos(2*pi*fc*t);
message = Am*cos(2*pi*fm*t);

mf = 10; 

%modulated signal
m =  Ac*cos((2*pi*fc*t)+mf*sin(2*pi*fm*t));

%plot
figure; 
subplot(3,1,1); 
plot(t, message, 'b'); 
title('Message Signal'); 
xlabel('Time (s)'); 
ylabel('Amplitude'); 
subplot(3,1,2); 
plot(t, carrier, 'r'); 
title('Carrier Signal'); 
xlabel('Time (s)'); 
ylabel('Amplitude'); 
subplot(3,1,3); 
plot(t, m, 'k'); 
title('FM signal'); 
xlabel('Time (s)'); 
ylabel('Amplitude'); 