n = gets.to_i
a = 2

if n % a == 0
    puts("NO")
else
    if a * (n - 1) % n == 1
        puts("YES")
    else
        puts("NO")
    end
end