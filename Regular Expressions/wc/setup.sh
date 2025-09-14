#!/bin/bash
# wc_practice_lab.sh
# Full Practice Lab for mastering wc command (basic → expert)

# Step 1: Create lab directory
mkdir -p wc_lab
cd wc_lab || exit

# Step 2: Generate sample files
cat > notes.txt <<EOF
This is a short note.
It has three lines.
wc is useful.
EOF

cat > story.txt <<EOF
Once upon a time there was a coder.
The coder loved Linux and shell scripting.
EOF

cat > data.csv <<EOF
id,name,age
1,Shivam,21
2,Raj,22
3,Asha,20
EOF

cat > report.md <<EOF
# Report
This is a markdown report.
It contains words and lines.
EOF

cat > essay.txt <<EOF
This is a long essay line that keeps going without a break and should be the longest one here.
Short line.
Another medium length line.
EOF

cat > log.txt <<EOF
INFO: Program started
ERROR: File not found
INFO: Retrying connection
ERROR: Permission denied
INFO: Finished
EOF

cat > script.sh <<EOF
#!/bin/bash
# This is a comment
echo "Hello"
echo "World"

# Another comment

EOF

cat > book.txt <<EOF
Hello world hello world
This book has repeated words
Unique counting is fun fun fun
EOF

mkdir -p src
cat > src/main.c <<EOF
#include <stdio.h>

int main() {
    printf("Hello, world!\\n");
    return 0;
}
EOF

cat > src/utils.c <<EOF
#include <stdio.h>

// Utility function
void greet() {
    printf("Hi\\n");
}
EOF

# Extra large file for harder wc practice
seq 1 1000 > numbers.txt

# Step 3: Display practice tasks
cat > ../tasks.txt << EOF 

✅ WC PRACTICE LAB IS READY ✅

🟢 Basic
1. Count the number of lines in notes.txt
2. Count words in story.txt
3. Count bytes in data.csv
4. Count lines + words in report.md
5. Verify wc report.md output (lines, words, bytes)

🟡 Intermediate
6. Use cat with wc to count words in notes.txt
7. Count total lines in all .txt files
8. Count number of files + directories in wc_lab
9. Count total words in story.txt without extra spaces (hint: xargs)
10. Check longest line in essay.txt

🔴 Advanced
11. Count lines containing "ERROR" in log.txt
12. Count total characters (multibyte aware) in src/*.c
13. Count all files in current + subdirectories
14. Count empty lines in script.sh
15. Compare wc -c vs wc -m on essay.txt
16. Count unique words in book.txt (use tr + sort + uniq + wc)
17. Save line count of notes.txt into a variable and print "File has X lines"
18. Find average line length of essay.txt
19. Find the file with the longest line among all .txt files
20. Count non-empty, non-comment lines in src/*.c

⚫ Expert (extra tough)
21. Find top 5 longest lines in essay.txt (with wc -L + sort).
22. Count how many numbers in numbers.txt are divisible by 7, then pipe to wc.
23. Measure total words across all .c and .txt files combined.
24. Find how many files in wc_lab contain more than 10 lines (use wc -l + awk).
25. Compute the sum of all line counts of .txt files (combine wc -l + awk).
26. Print only filenames of .txt files whose longest line is more than 50 chars (wc -L).
27. Find which file has the maximum number of words in wc_lab (wc -w + sort).
28. Count total number of characters in the first 100 lines of numbers.txt.
29. Compare byte size vs character count of book.txt (wc -c vs wc -m).
30. Write a one-liner to display: "wc_lab has X files, Y directories, Z total lines".

EOF
echo "👉 Now try solving each question using wc and pipes!"

