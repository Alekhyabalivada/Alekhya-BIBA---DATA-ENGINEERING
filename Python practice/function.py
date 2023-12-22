# FUNCTION - A function is a block of code which only runs when it is called
def fun():   # defining a function
    print('hello')
fun()  # calling the function we can call a fun multiple times

# Function with Arguments
def fun(a):
    print(a)
fun('A')
fun('B')

# Fun Ex.
def name(fname,lname):
    print(fname + " " + lname)
name('rohan')   # shows error bcoz it expects 2 arguments but we have given only one

def name(fname,lname):
    print(fname + " " + lname)
name('ishan','kishan')

# Function with multiple arguments
def name(*fname):
    print('name is ' + fname[2])
name('alekhya','krishna','vandana','jahnavi')

def my_function(**kid):
  print("His last name is " + kid["lname"])

my_function(fname = "Tobias", lname = "Refsnes")

# add & sub of 2 numbers
def add_sub(x,y):
    c=x+y
    d=x-y
    return c,d
res1,res2 = add_sub(5,4)
print(res1,res2)

# EVEN_ODD 
def even_odd(a):
    if a%2 == 0:
        print('even')
    else:
        print('odd')
even_odd(4)
even_odd(67)

# 1. POSITION ARGUMENTS - the arguments that are placed to a function call in specific order
def person(name,age):
    print('name is ', name)
    print('age is ', age)
person('alekhya',22)
person(22,'vandana')

# 2. KEYWORD ARGUMENTS - passing the arguments by their parameters names while calling the function
def person(name,age):
    print(name)
    print(age)
person(name='vandana',age=22)

# 3. DEFAULT ARGUMENTS - takes the default value from the parameter 
def person(name,age=26):
    print(name)
    print(age)
person('cherry')  # returns the default age value

# 4. ARBITRARY ARGUMENTS - accepts any no. of input values
# variable length non-keyword arguments
def fun(*b):
    for arg in b:
        print(arg)
fun('hello','good','to','see','you')

# variable length keyword arguments
def person(name,**data):
    print(name)
    print(data)
person('alli',city='hyd',age=35)









