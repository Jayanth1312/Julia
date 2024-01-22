print("Enter the sides a,b,c: ")
a,b,c=parse(Int64,readline()),parse(Int64,readline()),parse(Int64,readline())
s=(a+b+c)/2
area=sqrt(s*(s-a)*(s-b)*(s-c))
println("The area of the triangle is $area")