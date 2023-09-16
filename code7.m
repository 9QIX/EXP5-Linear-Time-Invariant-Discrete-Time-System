clc;
clf;
% Load the audio file 'hello.wav'
[x, fs] = audioread('song.wav');

% Define the impulse response, h[n]
k = zeros(1, round(fs * 0.09));
h = [1, k, 0.5, k, 0.25, k, 0.125, k, 0.0625];

% Convolve the audio file with h[n] to get y[n]
y = conv(x, h);

% Listen to the original audio
sound(x, fs);
pause(length(x) / fs); % Wait for the original audio to finish

% Listen to the convolved audio
sound(y, fs);

% Create subplots for visualization
figure;

% Plot the original audio x[n]
subplot(3, 1, 1);
plot((1:length(x))/fs, x);
xlabel('Time (s)');
ylabel('Amplitude');
title('Original Audio x[n]');

% Plot the impulse response h[n]
subplot(3, 1, 2);
plot((1:length(h))/fs, h);
xlabel('Time (s)');
ylabel('Amplitude');
title('Impulse Response h[n]');

% Plot the convolved audio y[n]
subplot(3, 1, 3);
plot((1:length(y))/fs, y);
xlabel('Time (s)');
ylabel('Amplitude');
title('Convolved Audio y[n]');

% Adjust the plot spacing
sgtitle('Comparison of Original and Convolved Signals');
