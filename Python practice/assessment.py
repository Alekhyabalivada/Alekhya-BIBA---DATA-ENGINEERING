# importing user defined module
import function
a=function.fun()


# importing built-in modules
import math
from math import *
num = int(input('value= '))
print('square root of num is ',sqrt(num))  
print('factorial of num is ',factorial(num))
print('pi value is ',math.pi)
print(math.degrees(1))   # prints radians in degrees
print(math.sin(3))   # prints sin of 2 radians


import random
print(random.randint(1,6))  # prints the random integer between 1-6
lst = [1,2,'alekhya',468]
print(random.choice(lst))   # prints random value from list


# Renaming the module
import math as m
print(m.sqrt(81))
print(m.pi)

# PANDAS 

# importing data using pandas
#Ex-1
import pandas as pd
df = pd.read_csv('C:\\Users\\hp\\Alekhya_python\\ex.csv') #(READ'PATH OF THE CSV FILE')
#df1 = pd.read_csv('C:\\Users\\hp\\Alekhya_python\\text_file.txt') #(READ'PATH OF THE TXT FILE')
print(df)
#print(df1)
df.columns

# app.py 

# Ex-2
import pandas as pd 
  
# Creating Dictionary 
dict = { 
    'series': ['Dhootha', 'Vyooham', 'Vadhuvu'], 
    'episodes': [8, 7, 7], 
    'actors': [' NC', 'Arvind', 'Nandu'] 
} 
  
# Creating Dataframe 
df = pd.DataFrame(dict) 
print(df)

# NUMPY
import numpy as np
 
#Ex-1 
# Creating array object 
arr = np.array([[1,2,3],['four',5,6]])
print(arr)

# print type of array
print('array type is ',type(arr))

# dimensions
print('dimensions= ',arr.ndim)

# shape of array
print('shape= ',arr.shape)

# size of array
print('size= ',arr.size)

# type of elements in array
print('type of elements= ',arr.dtype)

#Ex-2
# creating array using list of float type
a = np.array([[12,34,43],[23,234,432]],dtype= 'float')
print('array using list ',a)
#creating array using tuple
b=np.array((1,2,3))
print('array using tuple ',b)

# Ways of creating arrays in numpy
# 1. array()
from numpy import *
arr = array([1,2,3,4,5])
print(arr)
print(arr.dtype)

# 2. linspace
from numpy import *
arr = linspace(0,15,6)  # linspace(start,stop,path)
print('array after linspace',arr)

# 3. arange 
from numpy import *
arr = arange(0,15,1)  # arange(start,last,step)  
print('array after using arange ',arr)

# 4. logspace
from numpy import *
arr = logspace(1,40,5)
print('array after using logspace ',arr)

# 5. zeros
from numpy import *
arr = zeros(5,int)
a = zeros((5,3))   # prints zeros of 5 rows and 3 columns
print(arr)
print('array after using zeros ',a)

# 6. full
c= full((2,3),5,dtype='complex')
print('array after using full ',c)

# 7. ones
from numpy import *
arr = ones(5,int)
print('array after using ones ',arr)

# 8. random
r=random.random((2,2))  # creates an array with random values
print('array after using arange ',r)

# 9. reshape
# Reshaping 3X6 array to 2X2X3 array 
from numpy import *
re = array([[1,2,3,4,5,6],[23,43,23,54,23,76],[675,56,45,89,345,654]])
new = re.reshape(2,3,3)
print('original array',re)
print('--------------')
print('new array',new)

# flatten
from numpy import *
arr = array([[1, 2, 3], [4, 5, 6]]) 
flat_arr = arr.flatten() 
  
print ("Original array:\n", arr) 
print('--------------')
print ("Fattened array:\n", flat_arr)