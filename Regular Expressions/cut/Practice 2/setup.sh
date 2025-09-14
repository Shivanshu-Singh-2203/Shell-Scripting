#!/bin/bash
# setup_cut.sh – prepare files for practicing cut command

mkdir -p cut_lab
cd cut_lab || exit

# Sample CSV file
cat > data.csv <<EOF
id,name,age,city
1,Shivam,21,Delhi
2,Raj,22,Mumbai
3,Asha,20,Bangalore
4,Kiran,23,Chennai
EOF

# Log file with delimiter #
cat > log.txt <<EOF
2025-09-03#INFO#System started
2025-09-03#ERROR#File not found
2025-09-03#INFO#Connection established
2025-09-03#WARN#Low memory
EOF

# Tab-delimited file
cat > students.tsv <<EOF
101	Alice	Physics
102	Bob	Chemistry
103	Carol	Maths
104	Dave	Biology
EOF

# Plain text file
cat > text.txt <<EOF
HelloWorld
LinuxRocks
ShellScripting
CutCommand
EOF

echo "✅ cut_lab setup complete! Files ready: data.csv, log.txt, students.tsv, text.txt"

