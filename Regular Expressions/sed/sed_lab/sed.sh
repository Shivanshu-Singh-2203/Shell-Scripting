#!/bin/bash
# ==========================================
# sed_lab: Exercises and Questions with Files
# ==========================================

# ==========================================
# Files for practice:
# ==========================================
# text.txt          : general text for substitutions and line edits
# data.csv          : CSV data for column-based edits
# log.txt           : log file for pattern extraction
# mac_addresses.txt : MAC addresses for anonymization
# dates.txt         : sample dates for rearrangement
# students.tsv      : tab-separated file for headers or column edits

# ==========================================
# 1. Basic Substitutions
# ==========================================

# Q1 (text.txt): Replace "day" with "night" and print to stdout
# Q2 (text.txt): Replace "day" with "night" in the file itself
# Q3 (text.txt): Replace "Name=Xfce Session" with "Name=Xfce_Session" (preview only)
# Q4 (text.txt): Replace multiple occurrences per line
# Q5 (text.txt): Escape special characters in paths
# Q6 (text.txt): Change delimiter to pipe to avoid escaping

# ==========================================
# 2. Line Selection and Printing
# ==========================================

# Q7 (text.txt): Print 2nd line only
# Q8 (text.txt): Print lines 2 to 9
# Q9 (text.txt): Print lines from pattern "any" until line 17
# Q10 (text.txt): Print lines from start and quit after 3rd line
# Q11 (text.txt): Print lines from pattern "strstart" to "strend"
# Q12 (text.txt): Print last line

# ==========================================
# 3. Formatting and Cleanup
# ==========================================

# Q13 (text.txt): Replace tabs with 4 spaces
# Q14 (text.txt): Convert Windows line endings (CRLF) to Linux (LF)
# Q15 (text.txt): Convert Linux LF to Windows CRLF
# Q16 (text.txt): Remove trailing spaces
# Q17 (text.txt): Remove empty lines

# ==========================================
# 4. Pattern-Based Editing
# ==========================================

# Q18 (mac_addresses.txt): Anonymize MAC addresses
# Q19 (dates.txt): Rearrange date format (YYYY-MM-DD -> DD-MM-YYYY)

# ==========================================
# 5. Advanced Stream Editing
# ==========================================

# Q20 (text.txt): Remove leading spaces
# Q21 (text.txt): Remove empty lines and print to stdout
# Q22 (text.txt): Replace newlines in multiple lines
# Q23 (text.txt): Insert a line before a pattern
# Q24 (text.txt): Insert a line after a pattern

# ==========================================
# 6. TLDR-Style Commands
# ==========================================

# Q25 (text.txt): Replace all "apple" with "mango" and print to stdout
# Q26 (command output): Execute a sed script file and print result
# Q27 (command output): Print first line only

# ==========================================
# 7. Lab Challenges
# ==========================================

# Q28 (log.txt): Replace all occurrences of "error" with "warning" in-place
# Q29 (data.csv): Delete all empty lines and trailing spaces
# Q30 (data.csv): Swap first and last columns in a CSV using sed
# Q31 (students.tsv): Insert a header line at the top
# Q32 (text.txt): Remove all special characters using regex
# Q33 (mac_addresses.txt): Anonymize MAC addresses using sed + awk/cut
# Q34 (dates.txt): Convert all dates from DD/MM/YYYY to YYYY-MM-DD

# ==========================================
# Hints:
# Use sed with options: -i (in-place), -n (print selectively), regular expressions
# Examples:
# sed 's/old/new/g' file.txt
# sed -n '2,5p' file.txt
# sed -i 's/^\s*//g' file.txt
# ==========================================

