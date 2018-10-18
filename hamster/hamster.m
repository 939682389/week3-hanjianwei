function H = hamster(n)
% H = hamster(n) 计算前n个月仓鼠的数量
% 其中n为需要计算的月份，返回值是一个包含n个元素的向量，每个值表示该月仓鼠的数量

H = 1:n;

for i = 4 : n
    H(i)= H (i - 1) + H(i - 2);
end