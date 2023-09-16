% Program Expt5_3
% Simulation of an M-point Moving Average Filter
% Generate the input signal
n = 0:100;
s1 = cos(2*pi*0.05*n); % Low-frequency sinusoid
s2 = cos(2*pi*0.47*n); % High-frequency sinusoid
x = s1 + s2;

% Implementation of the moving average filter
M = input('Enter the desired length of the filter: ');
num = ones(1, M);
y = filter(num, 1, x) / M;

% Create subplots for input and output signals
clf;

% Plot Signal #1
subplot(2, 2, 1);
plot(n, s1);
axis([0, 100, -2, 2]);
xlabel('Time index n'); ylabel('Amplitude');
title('Signal #1');

% Plot Signal #2
subplot(2, 2, 2);
plot(n, s2);
axis([0, 100, -2, 2]);
xlabel('Time index n'); ylabel('Amplitude');
title('Signal #2');

% Plot Input Signal
subplot(2, 2, 3);
plot(n, x);
axis([0, 100, -2, 2]);
xlabel('Time index n'); ylabel('Amplitude');
title('Input Signal');

% Plot Output Signal
subplot(2, 2, 4);
plot(n, y);       
axis([0, 100, -2, 2]);
xlabel('Time index n'); ylabel('Amplitude');
title('Output Signal');
