% Define signal parameters
frequency = 100e6;  % Frequency in Hz (100 MHz)
amplitude = 10;    % Amplitude in volts (10 V)
duration = 1e-6;   % Duration in seconds (1 us)

% Generate time vector
time = linspace(0, duration, 1000);  % Create a time vector with 50 points

% Generate the cosine signal
cosine_signal = amplitude * cos(2*pi*frequency*time);

% Plot the signal
plot(time, cosine_signal)
xlabel('Time (s)')
ylabel('Amplitude (V)')
title('Cosine Signal at 100 MHz')
grid on

