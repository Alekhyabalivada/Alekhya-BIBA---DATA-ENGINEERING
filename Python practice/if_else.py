#IF statement execution
'''Syntax : if (condition):
			Print( )
			#Condition = true execute print st.'''
   
x=4
if x>5:
  print('yes')
print('no')

#IF-ELSE statement execution
'''Syntax: if condition :
	# executes if block if the condition is true
Else:
	# executes else block if the condition is false'''
 
x = int(input('num = '))
if x % 2 == 0:
  print('even')
else:
  print('odd')
  
#IF-ELIF-ELSE statement execution
'''Syntax : if condition 1 :
					# code block-1
				 Elif condition 2:
					# code block-2
				Else :
					# code block-3'''

x=int(input('num= '))
if 0<x<=10:
  print('less than ten')
elif x>10:
  print('greater than ten')
else:
  print('is negative')
  
# Nested If statement
'''Syntax: if condition 1:
					 # code block – 1
					if condition 2 :
						# code block – 2
					Else :
						# code block – 3
				     Else :
					 # code block – 4'''

x= int(input('value = '))
if x>10:
  print('x is greater than 10')
  if x>50:
    print('x is greater than 50')
  else:
    print('x is less than 50')
elif 0<x<=10:
  print('x is between 0 and 10')
else:
  print('x is negative')
    






