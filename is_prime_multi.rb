is_prime = [true] * 6000001
is_prime[0], is_prime[1] = false, false

(2..6000001).each do |i|
    if is_prime[i]
        (i*2..6000001).each do |j|
            is_prime[j] = false
            j += i
        end
    end
end

N = gets.to_i
(1..N).each do
    a = gets.to_i
    if is_prime[a]
        puts("pass")
    else
        puts("failure")
    end
end
