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

while b <= divisor.last do
    if a == b
        count += 1
        j += 1
    else
        num.push(count+1)
        j += 1
        count = 1
    end
end
puts(num)
# puts(num.inject(:*))