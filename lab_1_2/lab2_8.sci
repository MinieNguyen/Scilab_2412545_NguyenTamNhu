n = -2:1;
x = [1 -2 3 6];

// ----- y1(n) = x(-n) -----
n1 = -1:2;
y1 = x($:-1:1);

figure(1);
subplot(2, 1, 1);
plot2d3(n, x, style=2);
xtitle("x(n)", "n", "x(n)");
gca().children.children.thickness = 3;
xgrid(1);

subplot(2, 1, 2);
plot2d3(n1, y1, style=5);
xtitle("y1(n) = x(-n)", "n", "y1(n)");
gca().children.children.thickness = 3;
xgrid(1);

// ----- y2(n) = x(n + 3) -----
n2 = -5:-2;
y2 = x;

figure(2);
subplot(2, 1, 1);
plot2d3(n, x, style=2);
xtitle("x(n)", "n", "x(n)");
gca().children.children.thickness = 3;
xgrid(2);

subplot(2, 1, 2);
plot2d3(n2, y2, style=5);
xtitle("y2(n) = x(n + 3)", "n", "y2(n)");
gca().children.children.thickness = 3;
xgrid(2);

// ----- y3(n) = 2x(-n - 2) -----
n3 = -3:0;
y3 = 2 * [6 3 -2 1];

figure(3);
subplot(2, 1, 1);
plot2d3(n, x, style=2);
xtitle("x(n)", "n", "x(n)");
gca().children.children.thickness = 3;
xgrid(3);

subplot(2, 1, 2);
plot2d3(n3, y3, style=5);
xtitle("y3(n) = 2x(-n - 2)", "n", "y3(n)");
gca().children.children.thickness = 3;
xgrid(3);
