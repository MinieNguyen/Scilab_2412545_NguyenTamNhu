nx = 0:4;
nh = 0:2;

x = [1 2 -3 2 1];
h = [1 0 -1];

y = convol(x, h);
ny = 0:(length(y) - 1);

energy_x = cumsum(x.^2);
energy_y = cumsum(y.^2);

// Phương pháp gấp và dịch
Nx = length(x);
Nh = length(h);
Ny = Nx + Nh - 1;

x_pad = [x, zeros(1, Ny - Nx)];
h_rev = h($:-1:1); // Gấp tín hiệu h(k) thành h(-k)
y_fold = zeros(1, Ny);

// Thực hiện dịch chuyển và tính tổng tích chập
for n = 1:Ny
    sum_val = 0;
    for k = 1:Nx
        // Dịch chuyển và nhân chập
        idx = n - k + 1;
        if (idx >= 1) & (idx <= Nh) then
            sum_val = sum_val + x(k) * h(n - k + 1);
        end
    end
    y_fold(n) = sum_val;
end

disp("Kết quả y(n) bằng phương pháp Gấp và Dịch:");
disp(y_fold);

// Phương pháp ma trận
// Xây dựng ma trận chuyển đổi (Toeplitz matrix) cho h
H_mat = zeros(Ny, Nx);
for i = 1:Ny
    for j = 1:Nx
        idx = i - j + 1;
        if (idx >= 1) & (idx <= Nh) then
            H_mat(i, j) = h(idx);
        end
    end
end

// Tính tích chập bằng phép nhân ma trận với vector cột x
y_matrix = (H_mat * x')';

disp("Kết quả y(n) bằng phương pháp Ma trận:");
disp(y_matrix);

subplot(2, 2, 1);
plot2d3(nx, x, style=2);
xtitle("x(n)", "n", "x(n)");
gca().children.children.thickness = 3;
xgrid();

subplot(2, 2, 2);
plot2d3(ny, y, style=5);
xtitle("y(n) = x(n)*h(n)", "ny", "y(n)");
gca().children.children.thickness = 3;
xgrid();

subplot(2, 2, 3);
plot2d3(nx, energy_x, style=3);
xtitle("Năng lượng tích lũy của tín hiệu x(n)", "n", "Energy");
gca().children.children.thickness = 3;
xgrid();

subplot(2, 2, 4);
plot2d3(nx, energy_x, style=6);
xtitle("Năng lượng tích lũy của tín hiệu y(n)", "n", "Energy");
gca().children.children.thickness = 3;
xgrid();
