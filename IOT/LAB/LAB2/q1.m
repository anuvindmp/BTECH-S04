clc;
close all;
clear all;

m = [0.5 1 1.5];

Am = 5; %Amp. of modulating signal
fm = 20; %frequency of modulating signal
Tm = 1/fm;
t = 0:0.001:1;
ym = Am*sin(2*pi*fm*t);

subplot(5,1,1);
plot(t,ym)
title('Message Signal');

%Carrier signal

Ac = Am;
fc = 100;
Tc = 1/fc;
yc = Ac*sin(2*pi*fc*t);
subplot(5,1,2);
plot(t,yc)
grid on;
title('Carrier Signal');

%AM Modulation
index = 0;
titles = {'index=0.5', 'index=1', 'index=1.5'};
for i = m
    subplot(5,1,3+index);
    index = index + 1;
    y = Ac * (1+i*sin(2*pi*fm*t)).*sin(2*pi*fc*t);
    plot(t,y)
    title(titles{index});
end
