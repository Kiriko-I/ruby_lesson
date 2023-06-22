def eratosthenes(n)
    is_prime = ["YES"] * (n+1)
    is_prime[0], is_prime[1] = "NO", "NO"
    # primes = [] nまでの素数をすべて格納する配列
    sq = (n**0.5+1).to_i
    
    (2..sq).each do |i|
        if is_prime[i] == "YES"
            # primes << i
            j = i * i #二乗するまでの数は、その数の前までの素数で検討済みのため。e.g. i=5のとき、10はi=2で検討している。
            while j <= n+1
                is_prime[j] ="NO"
                j += i # iの倍数を検討
            end
        end
    end
    if is_prime[n] == "NO"
        return result = "NO"
    else
        return result = "YES"
    end
end
n = gets.to_i
puts(eratosthenes(n))
