# Bandit Game - Level 7

## Objective
The goal of **Bandit Level 7** is to find the password for Level 8. The password is stored in the file `data.txt` next to the word "millionth".

---

## Steps to Complete Level 7

1. **Log in to the Bandit server** using the password obtained from Level 6:
   ```bash
   ssh -p 2220 -l bandit7 bandit.labs.overthewire.org
   ```

2. Once logged in, confirm the presence of the `data.txt` file:
   ```bash
   ls -l data.txt
   ```

3. The file likely contains a large amount of text. To find the line containing "millionth", use the `grep` command:
   ```bash
   grep "millionth" data.txt
   ```

4. This command will output the line containing "millionth", which should include the password for the next level.

5. If you want to extract just the password, you can use `awk` or `cut`:
   ```bash
   grep "millionth" data.txt | awk '{print $2}'
   ```
   or
   ```bash
   grep "millionth" data.txt | cut -f2
   ```

6. The password for Level 8 will be displayed. **Copy this password** for use in the next level.

## Key Concepts

- **Text Processing**: This level introduces the need to search within a file for specific content.
- **Grep**: A powerful command-line utility for searching plain-text data sets for lines that match a regular expression.
- **Piping**: The `|` symbol is used to send the output of one command as input to another.
- **Awk**: A versatile programming language for working on files.
- **Cut**: A command for cutting out sections of each line of files.

## Useful Commands

- `ls`: List directory contents
- `grep`: Search for patterns in text
- `awk`: Pattern scanning and text processing language
- `cut`: Remove sections from each line of files

## Tips

- `grep` is case-sensitive by default. Use the `-i` option if you need case-insensitive matching.
- When dealing with large files, it's often more efficient to use tools like `grep` to search for specific content rather than trying to view the entire file.
- `awk` and `cut` are powerful tools for extracting specific fields from structured text data.

## Next Steps

After obtaining the password, log out of the current session and prepare to log in to Bandit Level 8 using the new password.

