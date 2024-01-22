include("prime.jl")
num=parse(Int,readline())
if is_prime(num)
    println("$num is a prime number.")
else
    println("$num is not a prime number.")
end