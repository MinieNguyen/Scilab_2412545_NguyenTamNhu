n = -2:2;
x = [2, 3, 4, 5, 6];

x_reverse = x($:-1:1);

xe = (x + x_reverse) / 2;
xo = (x - x_reverse) / 2;

subplot(3,1,1);
plot2d3(n, x, style=2);
xtitle("x(n)", "n", "x(n)");
gca().children.children.thickness = 3;
xgrid();

subplot(3,1,2);
plot2d3(n, xe, style=3);
xtitle("xe(n)", "n", "xe(n)");
gca().children.children.thickness = 3;
xgrid();

subplot(3,1,3);
plot2d3(n, xo, style=5);
xtitle("xo(n)", "n", "xo(n)");
gca().children.children.thickness = 3;
xgrid();
