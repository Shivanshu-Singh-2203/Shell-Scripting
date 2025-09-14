#!/bin/bash
# ==========================================
# grep_practice.sh
# Creates test files and runs grep practice commands
# ==========================================
mkdir -p greplab
cd greplab
echo "Creating test files..."

# 1. text_words.txt
cat > text_words.txt << EOL
apple banana cherry
Apple pie is delicious
banana split with ice cream
Cherry tart and apple jam
EOL

# 2. numbers.txt
cat > numbers.txt << EOL
Order 123
Order 456
Order 789
Invoice 101
Invoice 202
Invoice 303
EOL

# 3. errors.log
cat > errors.log << EOL
[ERROR] Cannot connect to server
[WARNING] Low disk space
[INFO] Server started successfully
[ERROR] Timeout occurred
[INFO] Connection established
EOL

# 4. sentence.txt
cat > sentence.txt << EOL
The quick brown fox jumps over the lazy dog.
Pack my box with five dozen liquor jugs.
Sphinx of black quartz, judge my vow.
How razorback-jumping frogs can level six piqued gymnasts!
EOL

# 5. dates.csv
cat > dates.csv << EOL
2025-08-23,John,Login Successful
2025-08-23,Alice,Login Failed
2025-08-22,Bob,Login Successful
2025-08-22,Eve,Login Failed
EOL

# 6. emails.txt
cat > emails.txt << EOL
john.doe@example.com
alice_smith@gmail.com
bob@example.org
eve@company.co.in
test.user+label@domain.com
EOL

# 7. mixed.txt
cat > mixed.txt << EOL
apple 123
banana 456
cherry 789
Apple 101
Banana 202
Cherry 303
EOL

# 8. multiword.txt
cat > multiword.txt << EOL
I love Python programming.
Python programming is fun.
I also like C++ programming.
Programming in Java is popular.
EOL

# 9 & 10. recursive/notes1.txt and notes2.txt
mkdir -p recursive
cat > recursive/notes1.txt << EOL
This is a sample note.
Remember to practice grep commands.
Grep is powerful for searching text.
EOL

cat > recursive/notes2.txt << EOL
Another note for grep practice.
Learning patterns and regex is fun.
Use -r to search recursively.
EOL

# 11. special_chars.txt
cat > special_chars.txt << EOL
$100 is not equal to 100 dollars
Use * to match multiple characters
? is used for optional matching
^ is used to match start of line
. matches any single character
EOL

# 12. long_text.txt
cat > long_text.txt << EOL
Line 1: This is a test line.
Line 2: Another test line with Python.
Line 3: Yet another line with numbers 12345.
Line 4: Final line for testing grep commands.
EOL

echo "All test files created!"


