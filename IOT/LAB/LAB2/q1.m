%parameters
fs = 1000;            
t = 0:1/fs:1;         
fc = 100;             
fm = 20;              
Am = 5;               
Ac = 5;   
%carrier and message signals
carrier = Ac*sin(2*pi*fc*t);           
message = Am*sin(2*pi*fm*t); 
%modulation indices(m = 1, 0.5, 1.5)
m1 = input("Enter modulation index :");
amWave1 = Ac*(1 + m1 * sin(2*pi*fm*t)) .* sin(2*pi*fc*t);
% Plot the signals 
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
plot(t, amWave1, 'k'); 
title('AM Wave (Under Modulation)'); 
xlabel('Time (s)'); 
ylabel('Amplitude'); 