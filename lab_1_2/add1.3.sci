//----- câu a -----
t = 0 : 0.001 : 3; 
xa = 3 * cos(5 * t + %pi / 6);

subplot(5, 1, 1);
plot(t, xa, 'r-', 'LineWidth', 2);
title('(a) xa(t) = 3*cos(5t + pi/6)');
xlabel('t(s)'); ylabel('xa(t)');
xgrid();

//----- câu b -----
n_b = 0:50;
xb = 3 * cos(5 * n_b + %pi / 6);

subplot(5, 1, 2);
plot2d3(n_b, xb, style=2);
plot(n_b, xb, 'ro', 'MarkerSize', 3);
gca().children(2).children.thickness = 2; 
title('(b) x(n) = 3*cos(5n + pi/6)');
xlabel('n'); ylabel('xb(n)');
xgrid();

//----- câu c -----
n_c = 0:50;
xc = 2 * exp(%i * (n_c / 6 - %pi));

subplot(5, 1, 3);
plot2d3(n_c, real(xc), style=3);
plot(n_c, real(xc), 'go', 'MarkerSize', 3);
gca().children(2).children.thickness = 2;
title('(c) x(n) = 2*exp(j*(n/6 - pi))');
xlabel('n'); ylabel('xc(n)');
xgrid();

//----- câu d -----
n_d = 0:60;
xd = cos(n_d / 8) .* cos(%pi * n_d / 8);

subplot(5, 1, 4);
plot2d3(n_d, xd, style=5);
plot(n_d, xd, 'bo', 'MarkerSize', 3);
gca().children(2).children.thickness = 2;
title('(d) x(n) = cos(n/8)*cos(pi*n/8)');
xlabel('n'); ylabel('xd(n)');
xgrid();

//----- câu e -----
n_e = 0:48; 
xe = cos(%pi * n_e / 2) - sin(%pi * n_e / 8) + 3 * cos(%pi * n_e / 4 + %pi / 3);

subplot(5, 1, 5);
plot2d3(n_e, xe, style=6);
plot(n_e, xe, 'mo', 'MarkerSize', 3);
gca().children(2).children.thickness = 2;
title('(e) x(n) [N0 = 16 samples]');
xlabel('n'); ylabel('xe(n)');
xgrid();
