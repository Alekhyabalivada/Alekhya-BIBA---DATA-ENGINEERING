# create a taxt file by saving as textfile.txt

# READ a FILE
# File open and reading
f = open('demofile.txt','r')
print(f.read())   # returns the text from the file

# reading using with statement
# Python code to illustrate with()
with open("demofile.txt") as file:  
    data = file.read() 
print(data)

# reading upto certain no. of characters
f = open('demofile.txt','r')
print(f.read(9))  # returns upto 9 characters


# Python code to illustrate split() function
with open("demofile.txt", "r") as file:
    data = file.readlines()
    for line in data:
        word = line.split()
        print (word)

# File handling using the write() Function
file = open('demofile.txt','w')
file.write('this file is output')
file.write('\nnew output')
file.close()
file = open('demofile.txt','r')
print(file.read())

# APPENDING the file - adds text to the existing file
file = open('demofile.txt','a')
file.write('\nthis file is output')
file.write('\nnew output')
file.close()
file = open('demofile.txt','r')
print(file.read())


