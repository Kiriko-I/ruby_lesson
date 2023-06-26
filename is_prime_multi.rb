# Rubyは大文字小文字を区別する
# 大文字は定数、小文字は変数

def eratosthenes(n)
    is_prime = ["YES"] * (n+1)
    is_prime[0], is_prime[1] = "NO", "NO"
    sq = n**0.5 + 1
    
    (2..sq).each do |i|
        if is_prime[i] == "YES"
            j = i * i
            while j <= n+1
                is_prime[j] ="NO"
                j += i
            end
        end
    end
    if is_prime[n] == "YES"
        puts("pass")
    else
        puts("failure")
    end
end

N = gets.to_i
(1..N).each do
    a = gets.to_i
    eratosthenes(a) == "NO"
end
