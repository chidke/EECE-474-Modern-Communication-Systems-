% Chidinma Dike 2024 (c)

%% clear everything
clear; close all; clc;

%% Define signal parameters
fc = 1010e3;  % Frequency for carrier signal
Ac = 10;    % Amplitude for carrier signal
T = 0.002;   % Duration in ms
OverSampling= 20;
fb = 5000; % Frequency for baseband signal
Ab = 1; % Amplitude for baseband signal

%% Generate timebase
fs= OverSampling*max(fc);
t= 0:1/fs:T-1/fs; % time base samapled at fs
N= length(t); % Sets the length of signals

%% Generate carrier
carrier_signal = cos(2*pi*fc*t);

%% Create baseband Signal (modulating) signal
baseband_signal =Ab*cos(2*pi*fb*t);

%% Amplitude Modulation
modulation_index = 1;
modulated = ( 1 + modulation_index*baseband_signal).*carrier_signal;

%% AM modulate using ammod command.
% modulated_signal_ammod = ammod(baseband_signal, fc, fs, 1);
%% Plot Baseband signal
figure, subplot(2,1,1)
plot(t, baseband_signal)
xlabel('Time (s)')
ylabel('Amplitude (V)')
title('Baseband Signal Time Domain')

%% Plot Modulated signal
subplot(2,1,2)
plot(t, modulated)
xlabel('Time (s)')
ylabel('Amplitude (V)')
title('Amplitude Modulation Time Domain')



