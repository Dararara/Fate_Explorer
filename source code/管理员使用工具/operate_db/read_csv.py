import csv
with open('fate_explorer.csv') as file:
    csvReader = csv.reader(file)
    
    for row in csvReader:
        print(row[0])

