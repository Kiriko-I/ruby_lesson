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
a = divisor[j]
b = divisor[j+1]
num = []
count = 1

while j+2 <= divisor.size do
    if a != b
        num.push(count)
        count = 1
    else
        count += 1
    end
    if j+2 == divisor.size && a == b
        num.push(count)
    end
    j += 1
end
# puts(num)
# puts(num.inject(:*))