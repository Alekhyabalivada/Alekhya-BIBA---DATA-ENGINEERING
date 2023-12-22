
# Ex-1
def fun(a):
    if a < 4:
        b = a/(a-3)
    print("Value of b = ", b)    
try:       # executes if there is no error
    fun(3)
    fun(5)
except ZeroDivisionError:   # error handling
    print("ZeroDivisionError Occurred and Handled")
except NameError:
    print("NameError Occurred and Handled")
finally:     # executes even there is error
    print('always executes')
    
 # Ex-2
a=1
b=0
try:
    print(a/b)
except:
    print("can't divide by zero")  
finally:
    print('hello')
    
    
    
    
    
    
    
