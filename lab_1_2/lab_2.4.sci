n = -5:5; 
rn = n .* bool2s(n >= 0);

plot2d3(n, rn, style=2);
plot(n, rn, 'ro');
title('Unit Ramp Signal r(n)');
xlabel('n');
ylabel('r(n)');
xgrid();


