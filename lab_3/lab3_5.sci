function[yn, yorigin] = multi(x1n, x1origin, x2n, x2origin)
    n1 = (1:length(x1n)) - x1origin;
    n2 = (1:length(x2n)) - x2origin;

    nmin = min([n1(1), n2(1)]);
    nmax = max([n1($), n2($)]);
    n = nmin:nmax;

    x1 = zeros(1, length(n));
    x2 = zeros(1, length(n));

    for i = 1:length(x1n)
        x1(n1(i)-nmin+1) = x1n(i);
    end

    for i = 1:length(x2n)
        x2(n2(i)-nmin+1) = x2n(i);
    end

    yn = x1 .* x2;
    yorigin = 1 - nmin;
endfunction

x1n = [0, 1, 3, -2];
x2n = [1, 1, 2, 3];
x1origin = 1;
x2origin = 2;
[yn, yorigin] = multi(x1n, x1origin, x2n, x2origin);

n1 = (1:length(x1n)) - x1origin;
n2 = (1:length(x2n)) - x2origin;
n3 = (1:length(yn)) - yorigin;

subplot(3, 1, 1);
plot2d3(n1, x1n, style=2);
xtitle("x1(n)", "n1", "x1(n)");
gca().children.children.thickness = 3;
xgrid();

subplot(3, 1, 2);
plot2d3(n2, x2n, style=3);
xtitle("x2(n)", "n2", "x2(n)");
gca().children.children.thickness = 3;
xgrid();

subplot(3, 1, 3);
plot2d3(n3, yn, style=5);
xtitle("y(n) = x1(n).x2(n)", "n3", "y(n)");
gca().children.children.thickness = 3;
xgrid();
