n = gets.to_i

def eratosthenes(n)
    if n == 0 || n == 1
        is_prime = "NO"
    else
        i = (2..n).to_a

        for i in 2..(n**0.5 + 1) do
            result = n % i
            if result == 0
                is_prime = "NO"
                break
            end
        end

is_prime = "Yes"

