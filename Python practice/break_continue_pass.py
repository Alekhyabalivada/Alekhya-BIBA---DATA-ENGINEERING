# BREAK - break allows you to exit a loop when an external condition is metn=int(input('value= '))
n=int(input('value= '))
for i in range(n):
    print(i)
    if i == 5:
        break   #breaks/stops the iteration if i becomes 5
    
# CONTINUE - used to skip the remaining code inside a loop for the current iteration  only
# skips the particular condition and continues the loop
n=int(input('n= '))
for i in range(n):
    if i==3:
        continue  #skips 3 and executes the loop
    print('print: ',i)
    
# PASS -  it is a null statement which can be used as a placeholder for future code

for i in range(5):
    if i==3:
        pass
    else:
        print('hello',i)
    print(i)
    
    