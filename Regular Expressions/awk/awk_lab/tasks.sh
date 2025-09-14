## Q1. Print only the students who scored more than 80 marks.  

## Q2. Calculate the average marks of all students.
awk -F'\t' '{sum+=$4} END{print "Average marks:", sum/NR}' students.tsv

#Q3. Find the highest scorer and print their Name and Subject.
awk -F'\t' 'BEGIN{max=0} $4>max {max=$4; name=$2; subj=$3} END{print "Topper:", name, "in", subj, "with", max}' students.tsv

#Q4. Count how many students are studying each subject.
awk -F'\t' '{count[$3]++} END{for (subj in count) print subj, ":", count[subj]}' students.tsv

#Q5. Print students who failed (marks < 50).
awk -F'\t' '$4 < 50 {print "Failed:", $2, "with", $4}' students.tsv

#Q6. Print subject-wise average marks.
awk -F'\t' '{sum[$3]+=$4; count[$3]++} END{for (subj in sum) print subj, "average:", sum[subj]/count[subj]}' students.tsv

#Q8. Print the names of students whose names end with "a".
awk -F'\t' '$2 ~ /a$/' students.tsv

#Q9. Add a grade column (A for ≥85, B for 70–84, C for 50–69, F for <50).
awk -F'\t' '{
    grade="F"
    if ($4 >= 85) grade="A"
    else if ($4 >= 70) grade="B"
    else if ($4 >= 50) grade="C"
    print $1, $2, $3, $4, grade
}' students.tsv

#Q10. Print the RollNo and Name of the 2nd and 5th student in the file.
awk -F'\t' 'NR==2 || NR==5 {print $1, $2}' students.tsv

