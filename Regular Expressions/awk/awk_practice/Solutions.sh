#!/bin/sh
# 1. Print all lines
awk '{print $0}' students.tsv

# 2. Print only the Name column
awk -F'\t' '{print $2}' students.tsv

# 3. Print RollNo and Subject together
awk -F'\t' '{print $1, $3}' students.tsv

# 4. Print lines where Subject is Maths
awk -F'\t' '$3=="Maths"' students.tsv

# 5. Print names whose RollNo is greater than 102
awk -F'\t' '$1 > 102 {print $2}' students.tsv

# 6. Count total number of students
awk 'END{print NR}' students.tsv

# 7. Print line numbers along with data
awk '{print NR, $0}' students.tsv

# 8. Print data in the format: RollNo | Name | Subject
awk -F'\t' 'BEGIN{print "RollNo | Name | Subject"} {print $1 " | " $2 " | " $3}' students.tsv

# 9. Print unique list of subjects
awk -F'\t' '{print $3}' students.tsv | sort | uniq

# 10. Print RollNo and Name for students not in Physics
awk -F'\t' '$3!="Physics" {print $1, $2}' students.tsv

# 11. Print students whose name starts with C
awk -F'\t' '$2 ~ /^C/' students.tsv

# 12. Print the last student in the file
awk 'END{print $0}' students.tsv

# 13. Print Name column in uppercase
awk -F'\t' '{print toupper($2)}' students.tsv
