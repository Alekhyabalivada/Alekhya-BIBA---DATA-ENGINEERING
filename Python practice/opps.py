# CLASS - A class is a code template for creating objects
class animal():
    pass

# OBJECT - The object is an entity that has a state and behavior associated with it

class comp:    # Class,class name
    def config(self):    # Method
        print('i5,16gb,1TB')
com1=comp()  # Object
com1.config()  # calling

# __init__ - it is always executed when the class is being initiated

class person:
    def __init__(self,name,age):
        self.name = name
        self.age = age
    def details(self):
        print('person name is',self.name,'person age is',self.age)
person1 = person('alekhya',22)
person2 = person('jahnavi',22)
person1.details()
person2.details()     

# INHERITANCE - Inheritance allows us to define a class that inherits all the methods and properties from another class

# SINGLE INHERITANCE -  we derive a single base class from the single parent class or the existing class

# Ex-1
class A:
    def feature1(self):
        print('f1 working')
    def feature2(self):
        print('f2 working')
class B(A):
    def feature3(self):
        print('f3 working')
    def feature4(self):
        print('f4 working')
a1 = A()
a1.feature1()
a1.feature2()
b1=B()    # we can access 4
b1.feature1()
b1.feature2()
b1.feature3()
b1.feature4()

# Ex-2

class Bird:
    def __init__(self,name):
        self.name = name
    def info(self):
        print('bird is',self.name)
    def fly(self):
        print('bird can fly')
class parrot(Bird):
    def __init__(self, name,colour,character):
        super().__init__(name)
        self.colour = colour
        self.character = character
    def info(self):
        print('bird name is',self.name)
        print('bird colour is',self.colour)
        print('bird character is',self.character)
obj_parrot = parrot('parrot','green','good')
obj_parrot.fly()
obj_parrot.info()

# Ex-3
# Base class
class Parent:
    def func1(self):
        print("This function is in parent class.")
 
# Derived class
 
 
class Child(Parent):
    def func2(self):
        print("This function is in child class.")
 
 
# Driver's code
object = Child()
object.func1()
object.func2()

# Ex-4
#Base class
class Parent_class(object): 
       
    # Constructor 
    def __init__(self, value1,value2): 
        self.value1 = value1 
        self.value2 = value2
   
    # To perform addition
    def Addition(self) : 
        print(" Addition value1 : " , self.value1)
        print(" Addition value2 : " , self.value2)
        return self.value1 + self.value2
        
    def multiplication(self) :
        print(" multiplication value1 : " , self.value1)
        print(" multiplication value2 : " , self.value2)
        return self.value1 * self.value2
        
    def subraction(self) :
        print(" subraction value1 : " , self.value1)
        print(" subraction value2 : " , self.value2)
        return self.value1 - self.value2
      
# derived class or the sub class
class Child_class(Parent_class): 
    
    pass
      
# Driver code 
Object1 = Child_class(10,15)  # parent class object
print(" Added value :" , Object1.Addition() ) 
print( " " )
Object2 = Child_class(20,30)  # parent class object
print(" Multiplied value :" , Object2.multiplication() ) 
print( " " )
Object3 = Child_class(50,30)  # parent class object
print("Subracted value :" , Object3.subraction() ) 

# MULTI-LEVEL INHERITANCE  --- parent class - child class - sub child class

# Ex-1
class A:
    def feature1(self):
        print('f1 working')
class B(A):
    def feature2(self):
        print('f2 working')
class C(B):
    def feature3(self):
        print('f3 working')
        
obj1 = C()
obj1.feature1()
obj1.feature2()
obj1.feature3()
    
# Ex-2
class college:
    def col_name(self,name):
        self.name = name
        print('college name is ',self.name)
class branch(college):
    def branch_name(self,name):
        self.name = name
        print('branch name is ',self.name)
class section(branch):
    def sec_name(self):
        print('B')

obj = section()
obj.col_name('aditya college')
obj.branch_name('ECE')
obj.sec_name()

# MULTIPLE INHERITANCE --- parent class 1 - parent class 2 - child class

# Ex-1
class A:
    def feature1(self):
        print('f1 working')
class B:
    def feature2(self):
        print('f2 working')
class C(A,B):
    def feature3(self):
        print('f3 working')
obj = C()
obj.feature1()
obj.feature2()
obj.feature3()

# Ex-2

class names:
    def father(self,name,age):
        self.name = name
        self.age = age
        print('he is ',self.name,'he is ',self.age,'years old')
class mother:
    def mother_name(self,name,age):
        self.name=name
        self.age=age
        print('she is ',self.name,'she is ',self.age,'years old')
class child(names,mother):
    def child_name(self,name,age):
        self.name=name
        self.age=age
        print('he is ',self.name,'she is ',self.age,'years old')
name=child()
name.father('krishna',58)
name.mother_name('jyothi',56)
name.child_name('cherry',27)
      
# HIERARCHIAL INHERITANCE --- parent class - child class 1 - child class 2
class A():
    def F1(self):
        print('f1 working')
class B(A):
    def F2(self):
        print('f2 working')
class C(A):
    def F3(self):
        print('f3 working')
F = C()
F.F1()
F.F3()
F_B = B()
F_B.F1()
F_B.F2()
    
       
# POLYMORPHISM - many forms

class Bird:
   
    def intro(self):
        print("There are many types of birds.")
 
    def flight(self):
        print("Most of the birds can fly but some cannot.")
 
class sparrow(Bird):
   
    def flight(self):
        print("Sparrows can fly.")
class ostrich(Bird):
 
    def flight(self):
        print("Ostriches cannot fly.")
 
obj_bird = Bird()
obj_spr = sparrow()
obj_ost = ostrich()
 
obj_bird.intro()
obj_bird.flight()
 
obj_spr.intro()
obj_spr.flight()
 
obj_ost.intro()
obj_ost.flight()


        
    
















