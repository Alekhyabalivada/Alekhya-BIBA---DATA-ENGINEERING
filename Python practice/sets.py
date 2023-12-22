# SET - a data type in python used to store several items in a single variable

s = {23,23,45,34,75}
print(s)   # prints the set and eliminates the duplicate values
print(type(s))

a=set(['a','b','c','c'])
print('original set')
print(a)    # prints the values as set - {'a','b','c'}
b=frozenset([1,2,3])
print('frozen set')
# b.add(3) - shows error bcoz we can't change the frozen set
print(b)

# SET METHODS
# 1. ADD() - Adds an element to the set
s={1,3,5,'one','six',9}
s.add(50)
print(s)

# 2. CLEAR() - Removes all the elements from the set
a={1,2,3}
a.clear()
print(a)

# 3. COPY() - Returns a copy of the set
a={1,2,3}
b=a.copy()
print(b)

# 4. POP() - Removes an element from the set
a={1,2,3}
a.pop()
a.pop()
print(a)

# 5. REMOVE() - Removes the specified element
a={'a','b','c'}
a.remove('c')
print(a)

# 6. UNION() - Return a set containing the union of sets
a={1,2,3,4,5}
b={3,4,5,6,7}
c=a.union(b)
print(c)

# 7. UPDATE() - Update the set with another set, or any other iterable
a={1,2,3,4,5}
b={3,4,5,6,7}
a.update(b)
print(a)

# 8. DIFFFERENCE() - Returns a set that is the difference between two sets
a={1,2,'a','b','c',3}
b={3,4,5,'c','d'}
c=a.difference(b)  # returns set a by deleting the common elements in b
d=b.difference(a)
print(c)
print(d)

# 9. DIFFERENCE_UPDATE - Removes the items in this set that are also included in another, specified set
a={1,2,3,'a','b','c'}
b={3,4,5,'c','d'}
a.difference_update(b) # removes common items from both sets and updates set
print(a)

# 10. DISCARD() - Remove the specified item
a={'a','b','c'}
a.discard('c')
print(a)

# 11. INTERSECTION() - Returns a set, that is the intersection of two or more sets
a={1,2,3,'a','b','c'}
b={3,4,5,'c','d'}
c=a.intersection(b)
print(c)

# 12. INTERSECTION_UPDATE - Removes the items in this set that are not present in other, specified set(s)
a={1,2,3,'a','b','c'}
b={3,4,5,'c','d'}
a.intersection_update(b)
print(a)

# 13. ISDISJOINT - Returns whether two sets have a intersection or not
a={1,2,3,'a','b','c'}
b={3,4,5,'c','d'}
c = a.isdisjoint(b)
print(c)

# 14. ISSUBSET - Returns whether another set contains this set or not
a={1,2,3,'a','b','c'}
b={3,4,5,'c','d'}
c=a.issubset(b)
print(c)

a={1,2,3,'a','b','c'}
b={1,3,'c'}
c=b.issubset(a)
print(c)

# 15. ISSUPERSET - Returns whether this set contains another set or not
x = {"f", "e", "d", "c", "b", "a"}
y = {"a", "b", "c"}
z = x.issuperset(y) # superset - all elements in y must be in x
z1=y.issuperset(x)
print(z)
print(z1)

# 16. SYMMETRIC_DIFFERENCE - Returns a set with the symmetric differences of two sets
a={1,2,3,'a','b','c'}
b={3,4,5,'c','d'}
c = a.symmetric_difference(b)
print(c)

# 17. SYMMETRIC_DIFFERENCE_UPDATE - inserts the symmetric differences from this set and another
a={1,2,3,'a','b','c'}
b={3,4,5,'c','d'}
a.symmetric_difference_update(b)
print(a)

