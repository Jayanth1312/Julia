function Eucild_distance(x1,y1,x2,y2)
    return sqrt((x2-x1)^2+(y2-y1)^2)    
end
println("Enter point-1")
x1=parse(Int,readline())
y1=parse(Int,readline())
println("Enter point-2")
x2=parse(Int,readline())
y2=parse(Int,readline())

distance=Eucild_distance(x1,y1,x2,y2)
println("Distance between two points in a 2d plane is $distance")
