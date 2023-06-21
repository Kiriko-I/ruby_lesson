grothendieck = 57
for i in 2..57 do
    result = grothendieck % i
    if i != 57 && result == 0
        puts("NO")
        break
    end
end
if i == 57 && result ==0
    puts("YES")
end