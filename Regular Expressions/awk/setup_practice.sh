#!/bin/bash
# AWK Lab setup script (no git)

# Exit if any command fails
mkdir -p awk_practice
cd awk_practice
# Create students.tsv with tab-delimited data
cat > students.tsv <<EOF
101	Alice	Physics
102	Bob	Chemistry
103	Carol	Maths
104	Dave	Biology
EOF

# Create questions.md with practice exercises
cat > questions.md <<'EOF'
# AWK Practice Lab – Questions

---

## 1. Basics
1. Print all lines.  
2. Print only the **Name** column.  
3. Print RollNo and Subject together.  

---

## 2. Filtering
4. Print lines where Subject is **Maths**.  
5. Print names whose RollNo is greater than **102**.  

---

## 3. Counting & Formatting
6. Count total number of students.  
7. Print line numbers along with data.  
8. Print data in the format:  
   `RollNo | Name | Subject`  

---

## 4. Advanced
9. Print unique list of subjects.  
10. Print only RollNo and Name for students who are **not** studying Physics.  
11. Print students whose name starts with **C**.  
12. Print the last student in the file.  
13. Print the second column in **uppercase**.  

---

✅ Try these in terminal using `awk`.  
💡 Keep your answers in a separate file (e.g., `solutions.md`) if you want.  
EOF



