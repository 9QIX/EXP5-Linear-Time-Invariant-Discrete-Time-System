% Define the coefficients of the difference equation
a = [1, 0.71, -0.46, -0.62];
b = [0.9, -0.45, 0.35, 0.002];

% Compute the impulse response
L = 41; % Number of samples
n = 0:L-1;
h = impz(b, a, L);

% Display h
disp(h);

% Plot the impulse response
stem(n, h);
xlabel('Time index n');
ylabel('Amplitude');
title('Impulse Response');
grid;
