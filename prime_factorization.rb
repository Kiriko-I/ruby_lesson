n = gets.to_i
# sq = n**0.5 + 1 この回数実行しようとするとうまくいかない
top = n # 分子
i = 2

while i <= n do
    if (top % i) == 0
        puts i
        top = top / i
    else
        i += 1
    end
end