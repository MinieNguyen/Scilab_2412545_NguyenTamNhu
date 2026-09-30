n = -1:1;
x = [1, 3, -2]; 

x_rev = x($:-1:1);

xe = (x + x_rev) / 2;
xo = (x - x_rev) / 2;

subplot(3, 1, 1);
plot2d3(n, x, style=2);
xtitle("Original Signal x(n)", "n", "x(n)");
gca().children.children.thickness = 3;
xgrid();

// even component
subplot(3, 1, 2);
plot2d3(n, xe, style=5);
xtitle("Even Component x_e(n)", "n", "x_e(n)");
gca().children.children.thickness = 3;
xgrid();

// odd component
subplot(3, 1, 3);
plot2d3(n, xo, style=3);
xtitle("Odd Component x_o(n)", "n", "x_o(n)");
gca().children.children.thickness = 3;
xgrid();
