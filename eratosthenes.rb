def eratosthenes(n)
    is_prime = ["YES"] * (n+1)
    is_prime[0], is_prime[1] = "NO", "NO"
    primes = []
    sq = (n**0.5+1).to_i

    (2..sq).each do |i|
        if is_prime[i] == "YES"
            primes << i
            j = i * i
            while j <= n+1
                is_prime[j] ="NO"
                j += i
            end
        end
    end
    return primes
end
n = gets.to_i
puts(eratosthenes(n))
