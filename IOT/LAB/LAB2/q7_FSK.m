x=[1 0 0 1 1 0 1];  
N = length(x); 
Tb = 0.0001;   
disp('Binary Input Information at Transmitter: '); 
disp(x); 
nb = 100;   % Digital signal per bit 
digit = [];  
for n = 1:1:N 
    if x(n) == 1; 
       sig = ones(1,nb); 
    else x(n) == 0; 
        sig = zeros(1,nb); 
    end 
     digit = [digit sig]; 
end 
t1 = Tb/nb:Tb/nb:nb*N*(Tb/nb);   % Time period 
figure('Name','FSK Modulation and Demodulation','NumberTitle','off'); 
subplot(3,1,1); 
plot(t1,digit,'LineWidth',2.5); 
grid on; 
axis([0 Tb*N -0.5 1.5]); 
xlabel('Time(Sec)'); 
ylabel('Amplitude(Volts)'); 
title('Digital Input Signal'); 
Ac = 10;         % Carrier amplitude for binary input   
br = 1/Tb;       % Bit rate 
Fc1 = br*10;     % Carrier frequency for binary input '1' 
Fc2 = br*5;      % Carrier frequency for binary input '0' 
t2 = Tb/nb:Tb/nb:Tb;   % Signal time    
mod = []; 
for (i = 1:1:N) 
    if (x(i) == 1) 
        y = Ac*cos(2*pi*Fc1*t2);   % Modulation signal with carrier signal 1 
    else 
        y = Ac*cos(2*pi*Fc2*t2);   % Modulation signal with carrier signal 2 
    end 
    mod = [mod y]; 
end 
t3 = Tb/nb:Tb/nb:Tb*N;   % Time period 
subplot(3,1,2); 
plot(t3,mod); 
xlabel('Time(Sec)'); 
ylabel('Amplitude(Volts)'); 
title('FSK Modulated Signal'); 