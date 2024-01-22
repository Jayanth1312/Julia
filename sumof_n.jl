function sumof_natural(n)
    return n*(n+1)/2
end
n=parse(Int,readline())
println("The sum of first $n numbers is: ",sumof_natural(n))