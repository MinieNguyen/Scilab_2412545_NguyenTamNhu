n = -3:8;
x = zeros(1, length(n));

for i = 1:length(n)
    if n(i) >= 0 & n(i) <= 3 then
        x(i) = 1;
    end
end

// He thong (b): y(n) = x(n^2)
yb = zeros(1, length(n));
for i = 1:length(n)
    k = n(i)^2;
    if k >= 0 & k <= 3 then
        yb(i) = 1;
    end
end

// Dich dau ra va dau vao cho he thong (b)
yb_shift = zeros(1, length(n));
yb_input_shift = zeros(1, length(n));

for i = 1:length(n)
    yb_shift(i) = 0;
    if n(i)-2 >= -1 & n(i)-2 <= 1 then
        yb_shift(i) = 1;
    end

    k = n(i)^2 - 2;
    if k >= 0 & k <= 3 then
        yb_input_shift(i) = 1;
    end
end

// He thong (c): y(n) = x(n) - x(n-1)
yc = zeros(1, length(n));
yc_shift = zeros(1, length(n));
yc_input_shift = zeros(1, length(n));

for i = 1:length(n)
    k = n(i);
    km1 = n(i)-1;

    if k >= 0 & k <= 3 then
        v1 = 1;
    else
        v1 = 0;
    end

    if km1 >= 0 & km1 <= 3 then
        v2 = 1;
    else
        v2 = 0;
    end

    yc(i) = v1-v2;

    if n(i)-2 >= -3 & n(i)-2 <= 8 then
        j = find(n == n(i)-2);
        if j <> [] then
            yc_shift(i) = yc(j(1));
        end
    end

    k2 = n(i)-2;
    if k2 >= 0 & k2 <= 3 then
        a = 1;
    else
        a = 0;
    end

    if k2-1 >= 0 & k2-1 <= 3 then
        b = 1;
    else
        b = 0;
    end

    yc_input_shift(i) = a-b;
end

// He thong (d): y(n) = n*x(n)
yd = n .* x;
yd_shift = zeros(1, length(n));
yd_input_shift = zeros(1, length(n));

for i = 1:length(n)
    k = n(i)-2;
    if k >= 0 & k <= 3 then
        yd_shift(i) = k;
    end

    if n(i)-2 >= 0 & n(i)-2 <= 3 then
        yd_input_shift(i) = n(i);
    end
end

subplot(3,3,1);
plot2d3(n,x,style=1);
xtitle("x(n)", "n", "x(n)");
gca().children.children.thickness = 3;
xgrid();

subplot(3,3,2);
plot2d3(n,ya,style=2);
xtitle("yb1=x(n^2)", "n", "yb(n)");
gca().children.children.thickness = 3;
xgrid();

subplot(3,3,3);
plot2d3(n,ya_shift,style=2);
xtitle("yb(n-2)", "n", "yb1(n)");
gca().children.children.thickness = 3;
xgrid();

subplot(3,3,4);
plot2d3(n,ya_input_shift,style=2);
xtitle("Tb[x(n-2)]", "n", "yb2(n)");
gca().children.children.thickness = 3;
xgrid();

subplot(3,3,5);
plot2d3(n,yc,style=3);
xtitle("yc=x(n)-x(n-1)", "n", "yc(n)");
gca().children.children.thickness = 3;
xgrid();

subplot(3,3,6);
plot2d3(n,yc_shift,style=3);
xtitle("yc(n-2)", "n", "yc1(n)");
gca().children.children.thickness = 3;
xgrid();

subplot(3,3,7);
plot2d3(n,yc_input_shift,style=3);
xtitle("Tc[x(n-2)]", "n", "yc2(n)");
gca().children.children.thickness = 3;
xgrid();

subplot(3,3,8);
plot2d3(n,yd_shift,style=5);
xtitle("yd(n-2)", "n", "yd1(n)");
gca().children.children.thickness = 3;
xgrid();

subplot(3,3,9);
plot2d3(n,yd_input_shift,style=5);
xtitle("Td[x(n-2)]", "n", "yd2(n)");
gca().children.children.thickness = 3;
xgrid();
