#!/bin/bash
cd greplab
# 0. Basic search for 'apple' in text_words.txt
grep apple text_words.txt

# 1. Case-insensitive search with line numbers
grep -in apple text_words.txt

# 2. Recursive search in recursive/ directory
grep -R grep recursive/

# 3. Search multiple patterns from patterns.txt
echo -e "apple\nbanana" > patterns.txt
grep -f patterns.txt text_words.txt

# 4. Invert match (lines NOT containing ERROR)
grep -v ERROR errors.log

# 5. Context lines around 'ERROR'
grep -B 0 -A 2 ERROR errors.log

# 6. Lines starting with 'apple'
grep "^apple" text_words.txt

# 7. Extended regex: find 3-digit numbers
grep -E "[-1-9]{3}" numbers.txt

# 8. Recursive search with filename and whole word
grep -rnw recursive/ -e "note"

# 9. Highlight matches (color)
grep -E --color 'apple|banana' text_words.txt

# 10. Only matching numbers from numbers.txt
grep -o "[-1-9]\+" numbers.txt

# 11. Search 'Login Failed' with context
grep -C 0 "Login Failed" dates.csv

# 12. Count occurrences of 'apple'
grep -c apple text_words.txt

# 13. Search 'Python programming' phrase
grep "Python programming" multiword.txt

# 14. Case-insensitive search for 'python'
grep -i python multiword.txt

# 15. Search lines starting with 'Line' in long_text.txt
grep "^Line" long_text.txt

# 16. Search lines ending with 'text.'
grep "text\.$" sentence.txt

# 17. Match special characters ($100)
grep "\$99" special_chars.txt

# 18. Match question mark literally
grep "\?" special_chars.txt

# 19. Search emails ending with '.com'
grep "\.com$" emails.txt

# 20. Count number of INFO lines
grep -c INFO errors.log

# 21. Recursive grep for 'practice'
grep -r practice recursive/

# 22. Search with line numbers
grep -n apple text_words.txt

# 23. Invert match with line numbers
grep -vn ERROR errors.log

# 24. Search multiple files for 'note'
grep note recursive/notes*.txt


