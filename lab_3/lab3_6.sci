function[yn, yorigin] = convolution(xn, xorigin, hn, horigin)
    yn = convol(xn, hn);
    yorigin = xorigin + horigin - 1;
endfunction

xn = [0, 1, 3, -2];
hn = [1, 1, 2, 3];
xorigin = 1;
horigin = 2;
[yn, yorigin] = convolution(xn, xorigin, hn, horigin);

n1 = (1:length(xn)) - xorigin;
n2 = (1:length(hn)) - horigin;
n3 = (1:length(yn)) - yorigin;

subplot(3, 1, 1);
plot2d3(n1, xn, style=2);
xtitle("x(n)", "n1", "x(n)");
gca().children.children.thickness = 3;
xgrid();

subplot(3, 1, 2);
plot2d3(n2, hn, style=3);
xtitle("h(n)", "n2", "h(n)");
gca().children.children.thickness = 3;
xgrid();

subplot(3, 1, 3);
plot2d3(n3, yn, style=5);
xtitle("y(n) = x1(n)*x2(n)", "n3", "y(n)");
gca().children.children.thickness = 3;
xgrid();
