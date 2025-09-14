#!/bin/bash

cd cut_practice || exit

# Q1: Print only the first column from `data.txt`.
cut -d' ' -f1 data.txt

# Q2: Print the second and third columns from `data.txt`.
cut -d' ' -f2,3 data.txt

# Q3: Print only the names from `data.csv`.
cut -d',' -f2 data.csv

# Q4: Print the last field (city) from `data.csv`.
cut -d',' -f4 data.csv

# Q5: Extract only the usernames from `passwd.txt`.
cut -d':' -f1 passwd.txt

# Q6: Extract only the shells from `passwd.txt`.
cut -d':' -f7 passwd.txt

# Q7: Print the first 3 characters of each line from `data.txt`.
cut -c1-3 data.txt

# Q8: Print characters 5–10 of each line from `data.txt`.
cut -c5-10 data.txt

# Q9: Print the `Name` and `Marks` columns from `marks.tsv`.
cut -f2,3 marks.tsv

# Q10: Print only the even-numbered fields (2,4,6,...) from `data.csv`.
cut -d',' -f2,4 data.csv

