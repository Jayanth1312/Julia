using Polynomials

println("Enter the coefficients: ")
a = parse(Float64, chomp(readline()))
b = parse(Float64, chomp(readline()))
c = parse(Float64, chomp(readline()))

poly = Polynomial([c, b, a])
println("Roots are: ", roots(poly))

