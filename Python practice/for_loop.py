#For loop
'''Syntax: for iterator_var in sequence:
   			 statements(s)'''


n = 4
for i in range(0, n): 
    print(i) 
    
#print ak 10 times
for i in range(10):
    print('ak')
    
#NESTED FOR LOOP
for i in range(0,5):
    for j in range(0,5):
        print(i,j,end=' ')
    print(' ')
    
#print first 10 even numbers
for i in range(0,20):
    if i%2==0:
        print(i)    
#print first 10 odd numbers
for i in range(1,20):
    if i%2!=0:
        print(i)
#print first 10 natural numbers
for i in range(1,11):
    print(i)   
#print first 10 whole numbers
for i in range(0,10):
    print(i)
# Python program to print all the even numbers within the given range
n=int(input('n= '))
for i in range(n):
    if i%2==0:
        print(i)
