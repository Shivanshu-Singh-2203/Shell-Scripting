#!/bin/bash

# Go into the find_practice directory (using wildcard)
cd find-* || { echo "Directory not found"; exit 1; }

# =========================== 
# QUESTIONS (solve using find)
# ============================

# Q1: Find all `.txt` files inside the directory.
find . -type f -name '*.txt'

# Q2: Find all files inside `logs/` ending with `.log`.
find ./logs/ -type f -name '*.log'

# Q3: Find all Python files (`.py`) in any subdirectory.
find . -type f -name '*.py'

# Q4: Find all `.c` or `.py` files under `src/`.
find ./src/ -type f \( -name "*.c" -o -name "*.py" \)

# Q5: Find all hidden files (starting with `.`).
find . -type f -name ".*"

# Q6: Find all files bigger than 1 MB.
find . -type f -size +1M

# Q7: Find all empty files and directories.
find . -empty

# Q8: Find all `.jpg` files and print only their names (not full path).
find . -type f -name "*.jpg" -printf "%f\n"

# Q9: Find all files modified in the last 1 day.
find . -type f -mtime -1

# Q10: Find and delete all `.log` files. (⚠️ destructive)
find . -type f -name "*.log" -delete

# Q11: Find all files and sort them by size (biggest last).
find . -type f -exec ls -lS {} +

# Q12: Find all `.py` files and run `wc -l` on them.
find . -type f -name "*.py" -exec wc -l {} +

# Q13: Find all files with permissions `644`.
find . -type f -perm 644

# Q14: Find directories only (no files).
find . -type d

# Q15: Find `.txt` files but exclude `secret.txt`. 
find . -type f -name "*.txt" ! -name "secret.txt"

