% Clear the workspace and close any existing figures
clear;
clf;
close all;

% Define the signal length
s = 100;

% Generate time indices
k = 0:s-1;

% Define the impulse response and input sequence (unit step)
h = [1 ones(1, s-1)];
x = [1 ones(1, s-1)];

% Calculate the convolution
y = conv(h, x);

% Calculate the length of the output
ylength = length(h) + length(x) - 1;

% Generate time indices for the output
n = 0:ylength-1;

% Create subplots
figure;

% Plot the input sequence
subplot(3, 1, 1);
stem(k, x, 'filled');
xlabel('Time index n');
ylabel('Amplitude');
title('Input Sequence');

% Plot the impulse response
subplot(3, 1, 2);
stem(k, h, 'filled');
xlabel('Time index n');
ylabel('Amplitude');
title('Impulse Response');

% Plot the output obtained by convolution
subplot(3, 1, 3);
stem(n, y, 'filled');
xlabel('Time index n');
ylabel('Amplitude');
title('Output Obtained by Convolution');

% Adjust spacing between subplots for better readability
sgtitle('Convolution of Unit Step Sequences');
