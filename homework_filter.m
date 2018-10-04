% task 1 process with signal_1
%   task 1.1 low pass filter with FIR and IIR
%   task 1.2 bandpass filter with IIR
% task 2 process with signal_2
%   lowpass and bandpass filters with FIR or IIR
sample_rate = 1000;
t = linspace(0,1,sample_rate);
signal_1 = sin(2*pi*10*t)+sin(2*pi*50*t)+sin(2*pi*100*t);
signal_2 = sin(2*pi*10*t)+sin(2*pi*50*t)+sin(2*pi*100*t)+0.6*randn(1,sample_rate);
% plot(t,signal_2);
% task 1.1
f = 0:1:20;
f(1)=1;
f = sin(2*pi*10*f*1/sample_rate)./(pi*f);
f(1)=2*10*1/sample_rate;
subplot(211);
plot(signal_1);
subplot(212);
plot(conv(signal_1,f));

