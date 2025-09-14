#!/bin/bash
# solutions.sh – solutions to wc practice tasks

cd wc_lab || { echo "Run setup.sh first!"; exit 1; }

echo "🟢 Basic"
echo "1. Lines in notes.txt:"
wc -l notes.txt

echo "2. Words in story.txt:"
wc -w story.txt

echo "3. Bytes in data.csv:"
wc -c data.csv

echo "4. Lines + words in report.md:"
wc -l -w report.md

echo "5. wc report.md (lines, words, bytes):"
wc report.md


echo -e "\n🟡 Intermediate"
echo "6. Words in notes.txt using cat:"
cat notes.txt | wc -w

echo "7. Total lines in all .txt files:"
wc -l *.txt

echo "8. Count files + dirs in wc_lab:"
ls | wc -l

echo "9. Total words in story.txt without spaces:"
wc -w story.txt | xargs

echo "10. Longest line in essay.txt:"
wc -L essay.txt


echo -e "\n🔴 Advanced"
echo "11. Lines containing ERROR in log.txt:"
grep -c "ERROR" log.txt

echo "12. Total characters (multibyte aware) in src/*.c:"
wc -m src/*.c

echo "13. Count all files in current + subdirectories:"
find . -type f | wc -l

echo "14. Empty lines in script.sh:"
grep -c '^$' script.sh

echo "15. Compare bytes vs chars in essay.txt:"
wc -c essay.txt
wc -m essay.txt

echo "16. Unique words in book.txt:"
tr ' ' '\n' < book.txt | sort | uniq | wc -l


