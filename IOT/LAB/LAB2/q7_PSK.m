x=[ 1 0 0 1 1 0 1];                                   
bp=.000001;                                                    
disp(' Binary information at Trans mitter :'); 
disp(x); 
bit=[];  
for n=1:1:length(x) 
    if x(n)==1; 
       se=ones(1,100); 
    else x(n)==0; 
        se=zeros(1,100); 
    end 
     bit=[bit se]; 
end 
t1=bp/100:bp/100:100*length(x)*(bp/100); 
subplot(3,1,1); 
plot(t1,bit,'lineWidth',2.5);grid on; 
axis([ 0 bp*length(x) -.5 1.5]); 
ylabel('amplitude(volt)'); 
xlabel(' time(sec)'); 
title('transmitting information as digital signal'); 
A=5;                                          % Amplitude of carrier signal  
br=1/bp;                                                         % bit rate 
f=br*2;                                                 % carrier frequency  
t2=bp/99:bp/99:bp;                  
ss=length(t2); 
m=[]; 
for (i=1:1:length(x)) 
    if (x(i)==1) 
        y=A*cos(2*pi*f*t2); 
    else 
        y=A*cos(2*pi*f*t2+pi);   %A*cos(2*pi*f*t+pi) means -A*cos(2*pi*f*t) 
    end 
    m=[m y]; 
end 
t3=bp/99:bp/99:bp*length(x); 
subplot(3,1,2); 
plot(t3,m); 
xlabel('time(sec)'); 
ylabel('amplitude(volt)'); 
title('waveform for binary PSK modulation coresponding binary information');