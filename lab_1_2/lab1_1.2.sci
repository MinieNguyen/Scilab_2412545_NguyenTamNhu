// Vẽ đồ thị tín hiệu xa(t)
subplot(3,1,1)
t = linspace(0,0.1);
x_a = 3 * sin(100 * %pi * t)
plot(t, x_a, style = 1)
xtitle("xa(t)");

// Vẽ đồ thị tín hiệu x(n)
n = linspace(0,29,30);
subplot(3,1,2)
xn = 3 * sin(%pi * n / 3);
plot2d3(n, xn, style = 5)
gca().children.children.thickness = 2;
xtitle("x(n)");

// Vẽ đồ thị tín hiệu xq(n)
subplot(3,1,3)
delta = 0.1;
x_qn = floor(xn / delta) * delta;
plot2d3(n, x_qn, style = 3)
gca().children.children.thickness = 2;
xtitle("xq(n)");
