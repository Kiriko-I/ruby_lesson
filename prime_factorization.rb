n = gets.to_i

(2..(n**0.5+1)).each do |i|
    top = n
    top.each do |result|
        result = top / i
        puts result
        if (top % i) != 0
            
        

