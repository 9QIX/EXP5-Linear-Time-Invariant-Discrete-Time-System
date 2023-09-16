clf;

% Define the system coefficients for Step 2(a)
a = [1, 0.71, -0.46, -0.62];
b = [0.9, -0.45, 0.35, 0.002];

% Determine the length of the impulse response
L = 40;

% Calculate the impulse response using impz
h_impz = impz(b, a, L);

% Display the first 40 values of h[n] obtained with impz
disp('Impulse Response using impz:');
disp(h_impz);

% Create an impulse input (an impulse at n = 0)
x = [1, zeros(1, L - 1)]; % Impulse at n = 0, followed by zeros

% Use the filter command to compute the impulse response
h_filter = filter(b, a, x);

% Display the first 40 values of h[n] obtained with filter
disp('Impulse Response using filter:');
disp(h_filter);

% Compare the results obtained with impz and filter
if isequal(h_impz, h_filter)
    disp('The impulse responses obtained with impz and filter are identical.');
else
    disp('The impulse responses obtained with impz and filter are not identical.');
end

% Plot the impulse response obtained with impz
subplot(2, 1, 1);
stem(0:L-1, h_impz);
xlabel('Time index n');
ylabel('Amplitude');
title('Impulse Response using impz');
grid;

% Plot the impulse response obtained with filter
subplot(2, 1, 2);
stem(0:L-1, h_filter);
xlabel('Time index n');
ylabel('Amplitude');
title('Impulse Response using filter');
grid;
