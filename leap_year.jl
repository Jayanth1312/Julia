using Dates
print("enter the year: ")
year=parse(Int,readline())
if isleapyear(year)==true
    println("$year is a leap year")
else
    println("$year is not a leap year")
end