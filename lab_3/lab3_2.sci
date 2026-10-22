function[yn, yorigin] = advance(xn, xorigin, k)
    yn = xn;
    yorigin = xorigin + k;
endfunction

xn = [1, -2, 3, 6];
xorigin = 3;
[yn, yorigin] = advance(xn, xorigin, 1);

n1 = (1:length(xn)) - xorigin;
n2 = (1:length(yn)) - yorigin;

subplot(2, 1, 1);
plot2d3(n1, xn, style=2);
xtitle("x(n)", "n1", "x(n)");
gca().children.children.thickness = 3;
xgrid();

subplot(2, 1, 2);
plot2d3(n2, yn, style=5);
xtitle("y(n) = x(n + 1)", "n2", "y(n)");
gca().children.children.thickness = 3;
xgrid();
