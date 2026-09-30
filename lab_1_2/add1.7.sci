Fs = 8;         // Tan so lay mau 8 kHz
F1 = 5;         // Tan so ban dau F1 = 5 kHz
F2 = 9;         // Tan so ban dau F2 = 9 kHz

// Thoi gian lien tuc de ve dang song goc va dang song khoi phuc
t_cont = 0 : 0.005 : 2; // (ms)

// Cac mien thoi gian lay mau
t_sample = 0 : (1/Fs) : 2; // (ms)

// --- F1 = 5 kHz ---
x1_cont   = cos(2 * %pi * F1 * t_cont);
x1_sample = cos(2 * %pi * F1 * t_sample);
x1_alias  = cos(2 * %pi * 3  * t_cont); // Tin hieu bi chong pho 3 kHz

// --- F2 = 9 kHz ---
x2_cont   = cos(2 * %pi * F2 * t_cont);
x2_sample = cos(2 * %pi * F2 * t_sample);
x2_alias  = cos(2 * %pi * 1  * t_cont); // Tin hieu bi chong pho 1 kHz

// Do thi 1: F1 = 5 kHz bi chong pho thanh 3 kHz
subplot(2, 1, 1);
plot(t_cont, x1_cont, 'r--');        // Song goc 5 kHz (net dut)
plot(t_cont, x1_alias, 'b-');        // Song khoi phuc 3 kHz (net lien)
plot2d3(t_sample, x1_sample, style=2);
plot(t_sample, x1_sample, 'ro', 'MarkerSize', 4);
title('F1 = 5 kHz (red) sampled at Fs = 8 kHz -> Aliased to 3 kHz (blue)');
xlabel('Time t (ms)'); ylabel('Amplitude');
xgrid();

// Do thi 2: F2 = 9 kHz bi chong pho thanh 1 kHz
subplot(2, 1, 2);
plot(t_cont, x2_cont, 'r--');         // Song goc 9 kHz (net dut)
plot(t_cont, x2_alias, 'g-');         // Song khoi phuc 1 kHz (net lien)
plot2d3(t_sample, x2_sample, style=3);
plot(t_sample, x2_sample, 'go', 'MarkerSize', 4);
title('F2 = 9 kHz (red) sampled at Fs = 8 kHz -> Aliased to 1 kHz (green)');
xlabel('Time t (ms)'); ylabel('Amplitude');
xgrid();
