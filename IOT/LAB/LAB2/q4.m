% Define parameters 
Fs = 1000;              
T = 1/Fs;               
t = 0:T:1-T;            
 
% Generate message signal (sinusoidal wave) 
fm = 10;               
Am = 1;                
msg_signal = Am * sin(2*pi*fm*t); 
 
% Generate carrier signal (rectangular waveform) 
fc = 100;               
Ac = 1;                 
carrier_signal = square(2*pi*fc*t);
 
% Generate FM signal using fmmod() 
kf = 5;                
fm_signal = fmmod(msg_signal, fc, Fs, kf); 
 
% Plot the signals 
subplot(3,1,1); 
plot(t, msg_signal); 
title('Message Signal'); 
xlabel('Time (s)'); 
ylabel('Amplitude'); 
 
subplot(3,1,2); 
plot(t, carrier_signal); 
title('Carrier Signal (Rectangular)'); 
xlabel('Time (s)'); 
ylabel('Amplitude'); 
 
subplot(3,1,3); 
plot(t, fm_signal); 
title('FM Modulated Signal'); 
xlabel('Time (s)'); 
ylabel('Amplitude'); 