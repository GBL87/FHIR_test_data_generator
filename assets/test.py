import csv
import random

status_values = ['#active', '#completed', '#suspended', '#entered-in-error', '#unknown']

# Read the CSV data
with open('data.csv', 'r') as csvfile:
    reader = csv.DictReader(csvfile, delimiter=';')
    data = list(reader)

# Replace the status values
for row in data:
    row['status'] = random.choice(status_values)

# Write the modified data to a new CSV file
with open('output.csv', 'w', newline='') as csvfile:
    writer = csv.DictWriter(csvfile, fieldnames=data[0].keys(), delimiter=';')
    writer.writeheader()
    writer.writerows(data)