function y = x_signal(n)
    y = zeros(1, length(n));
    for i = 1:length(n)
        if n(i) >= -3 & n(i) <= -1 then
            y(i) = 1 + n(i)/3;
        elseif n(i) >= 0 & n(i) <= 3 then
            y(i) = 1;
        else
            y(i) = 0;
        end
    end
endfunction

n = -8:8;
x = x_signal(n);

y1 = x_signal(-n + 4);
y2 = x_signal(-n - 4);

subplot(3,1,1);
plot2d3(n, x, style=2);
xtitle("x(n)", "n", "x(n)");
gca().children.children.thickness = 3;
xgrid();

subplot(3,1,2);
plot2d3(n, y1, style=3);
xtitle("x(-n+4)", "n", "y1(n)");
gca().children.children.thickness = 3;
xgrid();

subplot(3,1,3);
plot2d3(n, y2, style=5);
xtitle("x(-n-4)", "n", "y2(n)");
gca().children.children.thickness = 3;
xgrid();
