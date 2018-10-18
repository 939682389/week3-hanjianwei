function H = short_lived_hamster(n)
% H = short_lived_hamster(n) 计算前n个月短命仓鼠的数量
% 其中n为需要计算的月份，返回值是一个包含n个元素的向量，每个值表示该月仓鼠的数量

H = ones(1, n);

m = min(n, 7);
H(1:m) = hamster(m);

for i = 8:n
    H(i) = H(i-1) + H(i-2) - H(i-7);
end