#!/bin/bash
# ==========================================
# Setup script for sed_lab
# Creates files and sample content for practice
# ==========================================

LAB_DIR="sed_lab"

# Create lab directory
mkdir -p "$LAB_DIR"

# Navigate to lab directory
cd "$LAB_DIR" || exit

# Create sample files with initial content

# text.txt
cat <<EOL > text.txt
Once upon a time, in a faraway land.
It was a sunny day and everyone was happy.
Happily ever after.
Name=Xfce Session
    Leading spaces example
Trailing spaces example    
EOL

# data.csv
cat <<EOL > data.csv
Name,Age,City
Alice,23,New York
Bob,30,Los Angeles
Charlie,28,Chicago
EOL

# log.txt
cat <<EOL > log.txt
[2025-09-07 09:00] user:Alice login
[2025-09-07 09:05] user:Bob login
[2025-09-07 09:10] user:Charlie error
[2025-09-07 09:15] user:Alice logout
EOL

# mac_addresses.txt
cat <<EOL > mac_addresses.txt
ether 00:1a:2b:3c:4d:5e
ether 11:22:33:44:55:66
EOL

# dates.txt
cat <<EOL > dates.txt
2025-09-07
2025-01-01
2024-12-31
EOL

# Display a message
echo "sed_lab setup complete! Files created:"
ls -l
cd ..
echo "You can now perform sed exercises on text.txt, data.csv, log.txt, mac_addresses.txt, dates.txt."

