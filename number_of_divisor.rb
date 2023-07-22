N = gets.to_i
top = N # 分子
divisor = []
i = 2

while i <= N do
    if (top % i) == 0
        divisor.push(i)
        top = top / i
    else
        i += 1
    end
end

j = 0
# a = divisor[j]
# b = divisor[j+1]
# このaとbを使うと、jが0で固定されてしまう
num = []
count = 1

while j+2 <= divisor.size do
    if divisor[j] == divisor[j+1]
        count += 1
    else
        num.push(count+1)
        count = 1
    end
    j += 1
end
if N == 1
    num.push(1)
else
    num.push(count+1) # 最後に入力されていたカウント数を追加
end
puts(num.inject(:*))