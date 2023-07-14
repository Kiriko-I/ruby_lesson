N = gets.to_i

a = 0
b = 1
i = 1

while i <= N do
    if i == 1
        c = a
    elsif i == 2
        c = b
    else
        c = a + b
        a = b
        b = c
    end
    puts(c)
    i += 1
end
