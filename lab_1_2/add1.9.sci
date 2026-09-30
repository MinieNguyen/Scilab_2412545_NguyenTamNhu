Fs = 600;                   // Tan so lay mau (Hz)
t_cont = 0 : 0.00005 : 0.01; // Thoi gian lien tuc (s)
n = 0 : 6;                  // Cac mau thoi gian roi rac n
t_sample = n / Fs;

// Tin hieu goc va tin hieu lay mau
xa = sin(480 * %pi * t_cont) + 3 * sin(720 * %pi * t_cont);
xn = sin(480 * %pi * t_sample) + 3 * sin(720 * %pi * t_sample);

// Tin hieu khoi phuc ya(t) = -2*sin(480*pi*t)
ya = -2 * sin(480 * %pi * t_cont);

plot(t_cont * 1000, xa, 'r--');              // Song goc 
plot(t_cont * 1000, ya, 'b-', 'LineWidth', 2); // Song khoi phuc ya(t)
plot2d3(t_sample * 1000, xn, style=2);
plot(t_sample * 1000, xn, 'ro', 'MarkerSize', 5);
title('Tin hieu goc xa(t) và tin hieu khoi phuc ya(t)');
xlabel('Time t (ms)'); ylabel('Amplitude');
legend(['Original xa(t)'; 'Reconstructed ya(t)'; 'Sampled x(n)']);
xgrid();
