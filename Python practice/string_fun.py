# String Functions

# 1. CAPITALIZE
sentence_1 = "mY name is YUVRAJ"
sentence_2 = "MY name is Ansul"
  
# Convert case using capitalize() 
capitalized_string = sentence_1.capitalize()  # returns 1st letter as capital
print("Sentence 1 output -> ", capitalized_string) 
capitalized_string = sentence_2.capitalize() 
print("Sentence 2 output -> ", capitalized_string) 

# 2. COUNT - returns no. of times an element occurs

message = 'hello i am alekhya working in hexaware'
# number of occurrence of 'a' 
print('Number of occurrence of a:', message.count('a'))

# 3. FIND - returns the index

message = 'Alekhya is my name'
# check the index of 'is' 
print(message.find('is'))

# 4. LOWER 

message = 'MY NAME IS alekhya'
# convert message to lowercase 
print(message.lower())

# 5. UPPER

message = 'my name is ALEKHYA'
# convert message to uppercase 
print(message.upper())

# 6. REPLACE

text = 'subway surfer'
# replace s with t 
replaced_text = text.replace('s', 't') 
print(replaced_text)

# 7. JOIN

text = ['Anshul', 'is', 'my', 'only', 'friend'] 
# join elements of text with space 
print(' '.join(text))






