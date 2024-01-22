n=parse(Int,readline())
for i in 1:n
    if n%i==0
        println("$n is divisible by ",i)
    end
end