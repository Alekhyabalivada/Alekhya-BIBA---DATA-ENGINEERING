# PRINT EX
#Print anything you want on the screen.
print('hello vandana')

#Store three integers in x, y and z. Print their sum.
x=1
y=2
z=3
print(x+y+z)

#Store three integers in x, y and z. Print their product.
x=1
y=2
z=3
print(x*y*z)

#Check type of following:"CodesDope",15,16.2,9.33333333333333333333
print(type(15))
print(type(16.2))
print(type(9.333333333333333333))
print(type('codes dope'))

#Join two string using '+'.E.g.-"Codes"+"Dope"
print('codes'+' '+'dope')

#Store two values in x and y and swap them.
x=3
y=4
t=x
x=y
y=t
print(x)
print(y)

# READ

#Take input of length and breadth of a rectangle from user and print area of it
x=int(input('length= '))
y=int(input('breadth= '))
print('area= ',x*y)

#Ask user to give two float input for length and breadth of a rectangle and print area type casted to int
x=input('length= ')
y=input('breadth= ')
print(int(float(x)*float(y)))

#Take side of a square from user and print area and perimeter of it.
a=int(input('side= '))
print('perimeter= ',4*a)
print('area= ',a*a)

#Take name, roll number and field of interest from user and print in the below format :Hey, my name is xyz and my roll number is xyz. My field of interest is xyz
name = str(input('NAME= '))
roll_no = int(input('roll_no= '))
FOI = str(input('interest= '))
print('Hey, my name is ',name,'and my roll number is ',roll_no,'. My feild of interest is ',FOI)

#Write a program to find square of a number.
#E.g.-
#INPUT : 2        OUTPUT : 4
#INPUT : 5        OUTPUT : 25
x=int(input('x= '))
print(x*x)

#Take two different string input and print them in same line. E.g.-
#INPUT : Codes
#Dope
#OUTPUT : CodesDope
s1 = str(input('s1= '))
s2 = str(input('s2= '))
print(s1+s2)

# Boolean

#Take two inputs from user and check whether they are equal or not
a=input('a= ')
b=input('b= ')
print(a==b)   # prints true or false

#Take 3 inputs from user and check :
#all are equal
#any of two are equal
#( use and or )
a=input('a= ')
b=input('b= ')
c=input('c= ')
d = a==b and b==c and c==a
print('all are equal: ',d)
e = a==b or b==c or c==a
print('any of them are equal ',e)


#Take two number and check whether the sum is greater than 5, less than 5 or equal to 5
a=int(input('a= '))
b=int(input('b= '))
print('sum greater than 5',a+b>5)
print('sum less than 5',a+b<5)
print('sum equal to 5',a+b==5)

#Judge the follwing expressions :
not(True and True)
True or False
not(False and True)
False and False
print(not(True and False))
print(True or False)
print(not(False and True))
print(False and False)

#Suppose passing marks of a subject is 35. Take input of marks from user and check whether it is greater than passing marks or not
x=int(input('marks= '))
print('pass',x>35)

# IF-ELSE

#A company decided to give bonus of 5% to employee if his/her year of service is more than 5 years. Ask user for their salary and year of service and print the net bonus amount.
print("Enter salary")
salary = input()
print("Enter year of service")
yos = int(input())
if yos>5:
  print("Bonus is",.05*salary)
else:
  print("No bonus")


#Take values of length and breadth of a rectangle from user and check if it is square or not.
a=int(input('a= '))
b=int(input('b= '))
if a==b:
   print('square')
else:
   print('not square')

#Take two int values from user and print greatest among them.
x = int(input('x= '))
y=int(input('y= '))
if x>y:
   print('x is greater than y')
else:
   print('y is greater than x')

#A school has following rules for grading system:
#a. Below 25 - F
#b. 25 to 45 - E
#c. 45 to 50 - D
#d. 50 to 60 - C
#e. 60 to 80 - B
#f. Above 80 - A
#Ask user to enter marks and print the corresponding grade.
marks = int(input('marks= '))
if marks > 80:
   print('A')
elif 60<=marks<=80:
   print('B')
elif 50<=marks<60:
   print('C')
elif 45<=marks<50:
   print('D')
elif 25<=marks<45:
   print('E')
elif marks<25:
   print('Fail')

#Take input of age of 3 people by user and determine oldest and youngest among them
p1 = int(input('p1 age= '))
p2 = int(input('p2 age= '))
p3 = int(input('p3 age= '))
if p1<p2 and p1<p3:
   print('p1 is younger')
elif p2<p1 and p2<p3:
   print('p2 is younger')
else:
   print('p3 is younger')

#Write a program to print absolute vlaue of a number entered by user. E.g.-
#INPUT: 1        OUTPUT: 1
#INPUT: -1        OUTPUT: 1
x=int(input('x= '))
if x<0:
   print(x*-1)
else:
   print(x)

# LISTS

#Take 10 integer inputs from user and store them in a list and print them on screen.
#l=[1,2,3,4,5,6,7,8,9]
#print(l)

i = 10
a = []
while i>0:
  print("Enter number")
  num = input()
  a.append(num)
  i = i-1
print(a)


# FUNCTIONS
#1.Print multiplication table of 12 using recursion.
def table(n,i):
  print(n*i)
  i=i+1
  if i<=10:
    table(n,i)
table(12,1)

#2.Write a function to calculate area and perimeter of a rectangle.
def rectangle(l,b):
   if l>0 and b>0:
      area = l*b
      perimeter = 2*(l+b)
      print(area)
      print(perimeter)
   else:
      print('negative value')
rectangle(4,4)


#3.Write a function to calculate area and circumference of a circle.
#def circle(r):
   




#4.Write a function to calculate power of a number raised to other. E.g.- ab.
#5.Write a function to tell user if he/she is able to vote or not.( Consider minimum age of voting to be 18. )
#6.Write a function to calculate power of a number raised to other ( ab ) using recursion.
#7.Write a function “perfect()” that determines if parameter number is a perfect number. Use this function in a program that determines and prints all the perfect numbers between 1 and 1000.[An integer number is said to be “perfect number” if its factors, including 1(but not the number itself), sum to the number. E.g., 6 is a perfect number because 6=1+2+3].
#8.Write a function to check if a number is even or not.
#9.Write a function to check if a number is prime or not.
#10.Write a function to find factorial of a number but also store the factorials calculated in a dictionary as done in the Fibonacci series example.

# CLASS
#1.Create a Cricle class and intialize it with radius. Make two methods getArea and getCircumference inside this class.
#2.Create a Temprature class. Make two methods :
'''1. convertFahrenheit - It will take celsius and will print it into Fahrenheit.
2. convertCelsius - It will take Fahrenheit and will convert it into Celsius.'''
#3.Create a Student class and initialize it with name and roll number. Make methods to :
'''1. Display - It should display all informations of the student.
2. setAge - It should assign age to student
3. setMarks - It should assign marks to the student.'''
#4.Create a Time class and initialize it with hours and minutes.
'''1. Make a method addTime which should take two time object and add them. E.g.- (2 hour and 50 min)+(1 hr and 20 min) is (4 hr and 10 min)
2. Make a method displayTime which should print the time.
3. Make a method DisplayMinute which should display the total minutes in the Time. E.g.- (1 hr 2 min) should display 62 minute.'''
