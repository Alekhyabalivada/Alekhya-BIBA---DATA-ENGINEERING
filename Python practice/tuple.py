# TUPLE - A tuple is a collection which is ordered,unchangeable and allows duplicate values
t=('alekhya',22,'vandana',21)
u = ('alekhya')
print(type(u))  # returns type as string we need to put , to make it as tuple
print(t)
print(type(t))

# COUNT METHODS 
# 1. COUNT() - Returns the number of times a specified value occurs in a tuple
t=(1,2,3,4,5,4,3,2,6,7)
u=t.count(3)
print(u)

# 2. INDEX() - Searches the tuple for a specified value and returns the position of where it was found
t=(1,2,3,4,5,4,3,2,6,7)
u=t.index(7)
print(u)