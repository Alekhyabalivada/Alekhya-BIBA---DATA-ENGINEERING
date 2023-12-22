
# importing data using CSV
# Ex-1
import csv 
with open('ex.csv','r') as file:
    csvreader = csv.reader(file)
    for line in csvreader:
        print(line)
# Ex-2       
import csv 
  
with open('ex1.csv') as csvfile: 
    
    # Return a reader object which will 
    # iterate over lines in the given csvfile. 
    readCSV = csv.reader(csvfile, delimiter=',') 
    for row in readCSV: 
        print(row) 
        print(row[0]) 
        print(row[0], row[1], row[2],) 
        print("\n") 

#Ex-3
import csv 
  
with open('csv.csv', 'r') as read_obj: 
  
    # Return a reader object which will 
    # iterate over lines in the given csvfile 
    csv_reader = csv.reader(read_obj) 
  
    # convert string to list 
    list_of_csv = list(csv_reader) 
  
    print(list_of_csv) 

#Ex-4
import csv
with open('student_data.csv', 'w', newline='') as csvfile:
    data = [{'Name': 'Alex', 'M1 Score': 62, 'M2 Score': 80},
        {'Name': 'Brad', 'M1 Score': 45, 'M2 Score': 56},
        {'Name': 'Joey', 'M1 Score': 85, 'M2 Score': 98}]
    fieldnames = ['Name', 'M1 Score', 'M2 Score'] 
    writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
    writer.writeheader()
    writer.writerows(data)
    print(data)



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
    'series': ['Friends', 'Money Heist', 'Marvel'], 
    'episodes': [200, 50, 45], 
    'actors': [' David Crane', 'Alvaro', 'Stan Lee'] 
} 
  
# Creating Dataframe 
df = pd.DataFrame(dict) 
print(df)








