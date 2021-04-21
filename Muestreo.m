t=-10:0.01:10;
signal=sin(t);
figure(1);
plot(t,signal);
grid;
xlabel("time[s]");ylabel("magnitud");title("Signal Sin")
%TREN DE PULSOS
T=0.5;
tren=0.0;
for n=min(t):max(t)
    tren=tren+100*sinc(100*(t-T*n));
end
%3
figure(2);subplot(2,1,1);plot(t,signal);grid;title("Signal sin(T)");
figure(2);subplot(2,1,2);plot(t,tren);grid;title("TREN DE PULSOS");    
%4
muestreo=signal.*tren;
figure(3);subplot(3,1,1);plot(t,signal);grid;title("Signal sin(T)");
figure(3);subplot(3,1,2);plot(t,tren,'r');grid;title("TREN DE PULSOS"); 
figure(3);subplot(3,1,3);plot(t,muestreo);grid;title("Signal MUESTREADA"); 

