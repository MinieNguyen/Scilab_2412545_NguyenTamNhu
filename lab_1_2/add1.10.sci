Fs = 1000;             
t_cont = 0 : 0.00005 : 0.01; 
n = 0 : 10;             
t_sample = n / Fs;

xa = 3*cos(600*%pi*t_cont) + 2*cos(1800*%pi*t_cont);
xn = 3*cos(600*%pi*t_sample) + 2*cos(1800*%pi*t_sample);
ya = 3*cos(600*%pi*t_cont) + 2*cos(200*%pi*t_cont);

L = 1024;
delta = 10 / L;

plot(t_cont*1000, xa, 'r--');
plot(t_cont*1000, ya, 'b-', 'LineWidth', 2);
plot2d3(t_sample*1000, xn, style=2);
plot(t_sample*1000, xn, 'ro', 'MarkerSize', 5);

title(' Aliasing & Quantization (Fs = 1000 Hz, Resolution = 9.77 mV)');
xlabel('Time t (ms)'); ylabel('Amplitude (V)');
legend(['Original xa(t)'; 'Reconstructed ya(t)'; 'Sampled x(n)']);
xgrid();
