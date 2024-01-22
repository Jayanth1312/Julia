function AmstrongNum(x)
    str=string(x)
    str_len=length(x)
    sum_of_powers=sum(Int(i)^str_len for i in str)
    return sum_of_powers==x
end

x=parse(Int,readline())
if AmstrongNum==true
    println("Is a amstrong number")
else
    println("Not a amstrong number")
end