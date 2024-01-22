function is_prime(n)
    n > 1 && all(n % i != 0 for i in 2:isqrt(n))
end
println("Enter a number:")
num = parse(Int, readline())
if is_prime(num)
    println("$num is a prime number.")
else
    println("$num is not a prime number.")
end
