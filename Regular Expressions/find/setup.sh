#!/bin/bash

# Base directory
BASE_DIR="find_practice"

# Remove existing directory if exists
rm -rf "$BASE_DIR"

# Create main directories
mkdir -p "$BASE_DIR/docs"
mkdir -p "$BASE_DIR/logs"
mkdir -p "$BASE_DIR/src/c"
mkdir -p "$BASE_DIR/src/python"
mkdir -p "$BASE_DIR/images/png"
mkdir -p "$BASE_DIR/images/jpg"
mkdir -p "$BASE_DIR/.cache"

# Create files in base directory
touch "$BASE_DIR/hello.txt"
touch "$BASE_DIR/secret.txt"
touch "$BASE_DIR/bigfile.dat"

# Create log files
touch "$BASE_DIR/logs/error.log"
touch "$BASE_DIR/logs/warn.log"
touch "$BASE_DIR/logs/info.log"

# Create C source files
touch "$BASE_DIR/src/c/main.c"
touch "$BASE_DIR/src/c/helper.c"

# Create Python files
touch "$BASE_DIR/src/python/app.py"
touch "$BASE_DIR/src/python/test_script.py"

# Create image files (empty placeholder files)
touch "$BASE_DIR/images/png/image1.png"
touch "$BASE_DIR/images/png/image2.png"
touch "$BASE_DIR/images/jpg/photo1.jpg"
touch "$BASE_DIR/images/jpg/photo2.jpg"

echo "✅ Directory structure for $BASE_DIR/ has been created successfully!"

