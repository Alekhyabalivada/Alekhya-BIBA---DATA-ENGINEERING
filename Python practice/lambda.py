str1 = 'HexaforHexa'
 
upper = lambda string: string.upper()
print(upper(str1))  # converts string to upper case

format_numeric = lambda num: f"{num:e}" if isinstance(num, int) else f"{num:,.2f}"
 
print("Int formatting:", format_numeric(1000000))
print("float formatting:", format_numeric(999999.789541235))

# difference between def function and lambda function

def cube(y):
    return y*y*y
 
lambda_cube = lambda y: y*y*y
print("Using function defined with `def` keyword, cube:", cube(5))
print("Using lambda function, cube:", lambda_cube(5))

# lambda function with list comprehension
is_even_list = [lambda arg=x: arg * 10 for x in range(1, 5)]
for item in is_even_list:
    print(item())

# lambda function with if-else

Max = lambda a, b : a if(a > b) else b
print(Max(1, 2))

# lambda with multiple statements
List = [[2,3,4],[1, 4, 16, 64],[3, 6, 9, 12]]
 
sortList = lambda x: (sorted(i) for i in x)
secondLargest = lambda x, f : [y[len(y)-2] for y in f(x)]
res = secondLargest(List, sortList)
 
print(res)

# lambda function with filter
li = [5, 7, 22, 97, 54, 62, 77, 23, 73, 61]
 
final_list = list(filter(lambda x: (x % 2 != 0), li))
print(final_list)


ages = [13, 90, 17, 59, 21, 60, 5]
adults = list(filter(lambda age: age > 18, ages))
 
print(adults)

# lambda function with map() function

li = [5, 7, 22, 97, 54, 62, 77, 23, 73, 61]
 
final_list = list(map(lambda x: x*2, li))
print(final_list)


animals = ['dog', 'cat', 'parrot', 'rabbit']
uppered_animals = list(map(lambda animal: animal.upper(), animals))
 
print(uppered_animals)

# lambda function with reduce() function
from functools import reduce
li = [5, 8, 10, 20, 50, 100]
sum = reduce((lambda x, y: x + y), li)
print(sum)


# ARBITRARY arguments
# sum of numbers
def add(*args):
   s=0
   for x in args:
      s=s+x
   return s
result = add(10,20,30,40)
print (result)


result = add(1,2,3)
print (result)

def addr(**kwargs):
   for k,v in kwargs.items():
      print ("{}:{}".format(k,v))


print ("pass two keyword args")
addr(Name="John", City="Mumbai")
print ("pass four keyword args")
addr(Name="Raam", City="Mumbai", ph_no="9123134567", PIN="400001")

def percent(math, sci, **optional):
   print ("maths:", math)
   print ("sci:", sci)
   s=math+sci
   for k,v in optional.items():
      print ("{}:{}".format(k,v))
      s=s+v
   return s/(len(optional)+2)


result=percent(math=80, sci=75, Eng=70, Hist=65, Geo=72)
print ("percentage:", result)

# Pass by value
def modify_mutable(my_list):
    my_list.append(4)
    print("Inside function:", my_list)
 
my_numbers = [1, 2, 3]
modify_mutable(my_numbers)
print("Outside function:", my_numbers)

# Pass by reference
def modify_immutable(x):
    x = x + 1
    print("Inside function:", x)
 
num = 5
modify_immutable(num)
print("Outside function:", num)

# CALANDER MODULE
import calendar
cal = calendar.month(2023, 4)
print ("Here is the calendar:")
print (cal)



