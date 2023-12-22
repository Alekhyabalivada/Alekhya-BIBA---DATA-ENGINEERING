# DICTIONARY - Dictionaries are used to store data values in key:value pairs
d = {1:'one',2:'two',3:'three'}
print(d)
print(type(d))
print(d[1])   # returns value of the key 1

# DICTIONARY METHODS

# 1. CLEAR() - Removes all the elements from the dictionary
a={1:1,2:2,3:3}
a.clear()
print(a)

# 2. COPY() - Returns a copy of the dictionary
a={1:1,2:2,3:3}
b=a.copy()
print(b)

# 3. FROMKEYS() - Returns a dictionary with the specified keys and value
x=('a','b','c')
y=0
z=dict.fromkeys(x,y)   # gives the key-value pairs of x,y
print(z)
a=dict.fromkeys(x)  # takes the default value as none
print(a)

# 4. GET() - Returns the value of the specified key
d={'a':'apple','b':'ball','c':'cat'}
f=d.get('a')  
print(f)

# 5. ITEMS() - Returns a list containing a tuple for each key value pair
d={'a':'apple','b':'ball','c':'cat'}
f=d.items()  
print(f)

# 6. KEYS() - Returns a list containing the dictionary's keys
d={'a':'apple','b':'ball','c':'cat'}
f=d.keys() 
print(f)

# 7. POP() - Removes the element with the specified key
d={'a':'apple','b':'ball','c':'cat'}
d.pop('c')
print(d)

d={'a':'apple','b':'ball','c':'cat'}
e=d.pop('b')
print(e)

# 8. POPITEM() - Removes the last inserted key-value pair
d={'a':'apple','b':'ball','c':'cat'}
d.popitem()
print(d)

# 9. SETDEFAULT() - Returns the value of the specified key. If the key does not exist: insert the key, with the specified value
q = {'alekhya':22,'vandana':21,'jahnavi':23}
r=q.setdefault('alekhya')
print(r)
s=q.setdefault('cherry',27)
print(s)

# 10. UPDATE() - Updates the dictionary with the specified key-value pairs
q = {'alekhya':22,'vandana':21,'jahnavi':23}
q.update({'cherry':27})
print(q)

# 11. VALUES() - Returns a list of all the values in the dictionary
q = {'alekhya':22,'vandana':21,'jahnavi':23}
r = q.values()
print(r)