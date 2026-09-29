clear;
clc;
clf();

// 1. Tín hiệu tương tự xa(t)
subplot(3, 1, 1);
t = linspace(0, 0.1, 500);
xa = 3 * sin(100 * %pi * t);
plot(t, xa);
xtitle("xa(t)");

// 2 & 3. Tín hiệu rời rạc x(n)
subplot(3, 1, 2);
n = 0:29;
xn = 3 * sin(%pi * n / 3);
plot2d3(n, xn);
xtitle("x(n)");

// 4. Tín hiệu lượng hóa xq(n)
subplot(3, 1, 3);
delta = 0.1;
xqn = floor(xn / delta) * delta;
plot2d3(n, xqn);
xtitle("xq(n)");
