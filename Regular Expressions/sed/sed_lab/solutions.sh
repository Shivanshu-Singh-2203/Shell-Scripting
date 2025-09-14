#!/bin/bash
# ==========================================
# sed_lab_exam_solutions.sh
# Solutions to sed_lab_exam.sh
# ==========================================

# =========================
# Part A: Substitution and Replacement
# =========================

# Q1 (text.txt) Replace "Linux" with "Unix" only on lines containing "system"
sed '/system/ s/Linux/Unix/' text.txt

# Q2 (text.txt) Replace first occurrence of "error" with "warning" on each line
sed 's/error/warning/' text.txt

# Q3 (data.csv) Replace all commas "," with semicolons ";"
sed 's/,/;/g' data.csv

# Q4 (log.txt) Replace timestamp "[YYYY-MM-DD HH:MM]" with "YYYY/MM/DD-HH:MM"
sed -E 's/\[([0-9]{4})-([0-9]{2})-([0-9]{2}) ([0-9]{2}:[0-9]{2})\]/\1\/\2\/\3-\4/' log.txt

# Q5 (text.txt) Replace multiple spaces with a single space
sed -E 's/ +/ /g' text.txt

# =========================
# Part B: Line Selection and Deletion
# =========================

# Q6 (text.txt) Delete all lines starting with "#"
sed '/^#/d' text.txt

# Q7 (data.csv) Print header and rows where Age > 25
sed -n '1p; /,[2-9][6-9],/p; /,[3-9][0-9],/p' data.csv

# Q8 (log.txt) Delete lines containing "logout"
sed '/logout/d' log.txt

# Q9 (text.txt) Print lines 5 to 10
sed -n '5,10p' text.txt

# Q10 (text.txt) Print lines between "Chapter 1" and "Chapter 3"
sed -n '/Chapter 1/,/Chapter 3/p' text.txt

# =========================
# Part C: Insertion and Appending
# =========================

# Q11 (students.tsv) Insert header line "ID	Name	Grade" at the top
sed -i '1iID\tName\tGrade' students.tsv

# Q12 (text.txt) Insert "--- START ---" before first line containing "Once"
sed '/Once/ i\--- START ---' text.txt

# Q13 (text.txt) Append "--- END ---" after last line containing "happily ever after"
sed '/happily ever after/ a\--- END ---' text.txt

