% Program Exp5_4
% Stability test based on the sum of the absolute 
% values of the impulse response samples

% Clear the current figure
clf;

% Define the numerator and denominator coefficients of the system
num = [1 -0.8]; 
den = [1 1.5  0.9];

% Set the number of samples for computing the impulse response
N = 200;

% Calculate the impulse response of the system
h = impz(num, den, N+1);

% Initialize a variable to accumulate the sum of absolute values
parsum = 0;

% Iterate through the impulse response samples
for k = 1:N+1
    
    % Accumulate the absolute values
    parsum = parsum + abs(h(k));
    
    % Check if the absolute value of h(k) is below a threshold
    if abs(h(k)) < 10^(-6)
        break; % Exit the loop if convergence is reached
    end
end

% Plot the impulse response
n = 0:N;
stem(n, h)
xlabel('Time index n');
ylabel('Amplitude');

% Print the value of abs(h(k)) to indicate convergence
disp('Value =');
disp(abs(h(k)));
