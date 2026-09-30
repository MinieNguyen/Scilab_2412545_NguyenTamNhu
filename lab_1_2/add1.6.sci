// T/Tp = 1/4 (So huu ti => Tuan hoan N0 = 4)
Tp1 = 1;        
T1  = 0.25;    
n1  = 0:30;     
x1  = cos(2 * %pi * (1/Tp1) * n1 * T1);

//  T/Tp = 1/%pi (So vo ti => Khong tuan hoan)
T2 = 1 / %pi;   
n2 = 0:30;
x2 = cos(2 * %pi * (1/Tp1) * n2 * T2);

subplot(2, 1, 1);
plot2d3(n1, x1, style=2);
plot(n1, x1, 'ro', 'MarkerSize', 4);
gca().children(2).children.thickness = 2;
title('TH1: T/Tp = 1/4 (So huu ti) -> x(n) TUAN HOAN voi N0 = 4 mau');
xlabel('n'); 
ylabel('x1(n)'); 
xgrid();

subplot(2, 1, 2);
plot2d3(n2, x2, style=5);
plot(n2, x2, 'bo', 'MarkerSize', 4);
gca().children(2).children.thickness = 2;
title('TH2: T/Tp = 1/pi (So vo ti) -> x(n) KHONG TUAN HOAN');
xlabel('n'); 
ylabel('x2(n)'); 
xgrid();
