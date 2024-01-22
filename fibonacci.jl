function fib(n)
    if n<=1
        return n
    else
        return fib(n-1)+fib(n-2)
    end
end
for i in 1:20
    println(fib(i))
end