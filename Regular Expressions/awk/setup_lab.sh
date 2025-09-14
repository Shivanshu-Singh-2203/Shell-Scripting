#!/bin/bash
# AWK Exit Lab setup script

# Create dataset: students with RollNo, Name, Subject, Marks
mkdir -p awk_lab
cd awk_lab

cat > students.tsv <<EOF
101	Alice	Physics	78
102	Bob	Chemistry	65
103	Carol	Maths	92
104	Dave	Biology	55
105	Eva	Physics	88
106	Frank	Chemistry	45
107	Grace	Maths	99
108	Henry	Biology	72
EOF
