n = -6:8;

// Tin hieu goc x(n)
x = zeros(1, length(n));
for i = 1:length(n)
    if n(i) >= -1 & n(i) <= 2 then
        x(i) = 1;
    elseif n(i) >= 3 & n(i) <= 4 then
        x(i) = 0.5;
    end
end

// Ham tinh x(m) tai chi so nguyen m
function v = xv(m)
    v = 0;
    if m >= -1 & m <= 2 then
        v = 1;
    elseif m >= 3 & m <= 4 then
        v = 0.5;
    end
endfunction

ya = zeros(1, length(n));
yb = zeros(1, length(n));
yc = zeros(1, length(n));
yd = zeros(1, length(n));
ye = zeros(1, length(n));
yf = zeros(1, length(n));
yg = zeros(1, length(n));
yh = zeros(1, length(n));

for i = 1:length(n)
    ya(i) = xv(n(i)-2);
    yb(i) = xv(4-n(i));
    yc(i) = xv(n(i)+2);

    if n(i) <= 2 then
        yd(i) = xv(n(i));
    end

    if n(i) == 3 then
        ye(i) = xv(n(i)-1);
    end

    yf(i) = xv(n(i)^2);
    yg(i) = (xv(n(i)) + xv(-n(i)))/2;
    yh(i) = (xv(n(i)) - xv(-n(i)))/2;
end

subplot(4,2,1);
plot2d3(n, ya, style=6);
xtitle("(a) x(n-2)", "n", "Amplitude");
gca().children.children.thickness = 3;
xgrid();

subplot(4,2,2);
plot2d3(n, yb, style=6);
xtitle("(b) x(4-n)", "n", "Amplitude");
gca().children.children.thickness = 3;
xgrid();

subplot(4,2,3);
plot2d3(n, yc, style=3);
xtitle("(c) x(n+2)", "n", "Amplitude");
gca().children.children.thickness = 3;
xgrid();

subplot(4,2,4);
plot2d3(n, yd, style=3);
xtitle("(d) x(n)u(2-n)", "n", "Amplitude");
gca().children.children.thickness = 3;
xgrid();

subplot(4,2,5);
plot2d3(n, ye, style=2);
xtitle("(e) x(n-1)delta(n-3)", "n", "Amplitude");
gca().children.children.thickness = 3;
xgrid();

subplot(4,2,6);
plot2d3(n, yf, style=2);
xtitle("(f) x(n^2)", "n", "Amplitude");
gca().children.children.thickness = 3;
xgrid();

subplot(4,2,7);
plot2d3(n, yg, style=5);
xtitle("(g) Even part", "n", "Amplitude");
gca().children.children.thickness = 3;
xgrid();

subplot(4,2,8);
plot2d3(n, yh, style=5);
xtitle("(h) Odd part", "n", "Amplitude");
gca().children.children.thickness = 3;
xgrid();
