#!/bin/bash
# solutions_cut.sh – solutions for cut practice tasks

cd cut_lab || { echo "Run setup_cut.sh first!"; exit 1; }

######################
# 🟢 Basic
######################

# 1. Print the first 5 characters of each line in text.txt
cut -c1-5 text.txt

# 2. Print characters 3–7 of each line in text.txt
cut -c3-7 text.txt

# 3. Print the first field (id) from data.csv (comma-delimited)
cut -d, -f1 data.csv

# 4. Print the second field (name) from data.csv
cut -d, -f2 data.csv

# 5. Extract the "age" column from data.csv
cut -d, -f3 data.csv


######################
# 🟡 Intermediate
######################

# 6. Print name + city fields from data.csv (fields 2 and 4)
cut -d, -f2,4 data.csv

# 7. Print only the last field (city) from data.csv
cut -d, -f4 data.csv

# 8. Cut out the third field from log.txt using "#" as delimiter
cut -d# -f3 log.txt

# 9. Print student names (second field) from students.tsv (tab-delimited)
cut -f2 students.tsv

# 10. Print first 10 characters of log.txt
cut -c1-10 log.txt


######################
# 🔴 Advanced
######################

# 11. Extract both name and age from data.csv in one command
cut -d, -f2,3 data.csv

# 12. Cut first 3 characters from every line in students.tsv
cut -c1-3 students.tsv

# 13. From text.txt, print all characters except the first 2
cut -c3- text.txt

# 14. Extract the timestamp field from log.txt
cut -d# -f1 log.txt

# 15. Extract all fields except "id" from data.csv
cut -d, -f2- data.csv


######################
# ⚫ Expert
######################

# 16. From data.csv, print only unique cities (combine cut + sort + uniq)
cut -d, -f4 data.csv | sort | uniq

# 17. From log.txt, print only the ERROR messages
grep "ERROR" log.txt | cut -d# -f3

# 18. From students.tsv, extract subject names and count them with wc
cut -f3 students.tsv | wc -l

# 19. Extract characters 5–10 from all lines in text.txt and sort them
cut -c5-10 text.txt | sort

# 20. Create a one-liner to display "Name: X, City: Y" for each student in data.csv
cut -d, -f2,4 data.csv | while IFS=, read -r name city; do
  echo "Name: \$name, City: \$city"
done

