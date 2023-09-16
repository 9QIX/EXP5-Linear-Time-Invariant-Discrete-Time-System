% Define the numerator coefficients
num = [3, -1, 2, 1];

% Compute the impulse response for the first 40 samples
L = 41; % Number of samples
n = 0:L-1;
h = impz(num, 1, L);

% Display the first five values of h[n]
disp('The first five values of h[n]:');
disp(h(1:5));
