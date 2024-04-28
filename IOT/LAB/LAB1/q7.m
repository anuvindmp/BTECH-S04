M = 4;       % Modulation order
freqsep = 8; % Frequency separation (Hz)
nsamp = 8;   % Number of samples per symbol
Fs = 32;     % Sample rate (Hz)
t = 0:0.001:1;

x = randi([0 M-1],1000,1);

y = fskmod(x,M,freqsep,nsamp,Fs);

figure; 
subplot(1,1,1); 
plot(t, y, 'b'); 
title('Message Signal'); 
xlabel('Time (s)'); 
ylabel('Amplitude'); 