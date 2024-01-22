# using Unitful

# distance_km=parse(Int64,readline())u"km"
# distance_miles=distance_km|> u"mi"

# println("$distance_km equals $distance_miles")
km=parse(Int64,readline())
miles=km*0.621371
println("$km km equals $miles miles")