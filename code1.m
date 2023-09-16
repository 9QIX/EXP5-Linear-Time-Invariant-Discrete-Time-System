% Program Expt5_1
% Program to Compute 41 samples
% of the impulse response, h[n],of Eq(5.5)
clf;
L = 41;
n=0:L-1;
num = [2.2403 2.4908 2.2403];
den = [1 -0.4 0.75];
h = impz(num,den,L);

% Display h
disp(h)

% Plot the impulse response
stem(n,h);
xlabel('Time index n'); ylabel('Amplitude');
title('Impulse Response'); grid;