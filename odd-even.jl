function is_even(x)
    if x%2==0
        println("Is even")
    else
        println("Is odd")
    end
end
x=parse(Int64,readline())
is_even(x)