%parameters
Am = 5;
Ac = 5;
fm = 10;
fc = 50;
t = 0:0.001:1;

mp = 4;

%carrier and message signals
message = Am*cos(2*pi*fm*t);
carrier = Ac*cos(2*pi*fc*t + 1);

%modulated signal
m =  Ac*cos((2*pi*fc*t)+mp*cos(2*pi*fm*t));

%plot
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
title('PM signal'); 
xlabel('Time (s)'); 
ylabel('Amplitude'); 
