n = gets.to_i
is_prime = "YES"
if n == 1
    is_prime = "NO"
else
    (2..(n-1)).each do |i| # for i in 2..(n - 1) do
        result = n % i
        if result == 0
            is_prime = "NO"
            break
        end
    end
end

puts(is_prime)
