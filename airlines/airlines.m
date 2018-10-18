function H = airlines(S0, U0, A0, n)
% 模拟航空公司的乘客分布 H = airlines(S0, U0, A0, n)
% 其中S0、U0、A0是三家航空公司的乘客人数的初值，n是模拟的周数
% 返回值H中，每一行表示一周中三家航空公司的人数，比如第1行是[S0, A0, A0]
% 此外，分布用红、绿、蓝三种颜色画出三家航空公司的走势图，根据具体情况设置画图的各种参数

H = zeros(n+1, 3);
H(1, :) = [S0, U0, A0];

M = [0.75, 0.20, 0.40; 0.05, 0.60, 0.20; 0.20, 0.20, 0.40];

for i = 1 : n
    H(i+1, :) = M * H(i, :)';
end

t = 0:n;

hold on;
plot(t, H(:, 1), 'ro-', 'MarkerFaceColor', 'r');
plot(t, H(:, 2), 'go-');
plot(t, H(:, 3), 'bs-', 'MarkerFaceColor', 'b');

title('航空公司乘客数量趋势图');
xlabel('周');
ylabel('乘客');
legend('US Airways', 'United Airlines', 'American Airlines');