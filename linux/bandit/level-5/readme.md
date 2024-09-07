# Bandit Game - Level 5

## Objective
The goal of **Bandit Level 5** is to find the password for Level 6. The password is stored in a file somewhere under the `inhere` directory and has the following properties:
- Human-readable
- 1033 bytes in size
- Not executable

---

## Steps to Complete Level 5

1. **Log in to the Bandit server** using the password obtained from Level 4:
   ```bash
   ssh -p 2220 -l bandit5 bandit.labs.overthewire.org
   ```

2. Once logged in, **navigate to the `inhere` directory**:
   ```bash
   cd inhere
   ```

3. **List the contents of the directory**:
   ```bash
   ls -la
   ```
   You'll likely see multiple subdirectories.

4. To find the file with the specific properties, use the `find` command:
   ```bash
   find . -type f -size 1033c ! -executable -exec file {} + | grep "ASCII text"
   ```
   This command does the following:
   - `.`: Search in the current directory and its subdirectories
   - `-type f`: Look for regular files
   - `-size 1033c`: Find files exactly 1033 bytes in size
   - `! -executable`: Exclude executable files
   - `-exec file {} +`: Run the `file` command on each found file
   - `| grep "ASCII text"`: Filter for human-readable (ASCII text) files

5. The command will output the path to the file meeting all criteria. **Read the contents of this file**:
   ```bash
   cat ./path/to/file
   ```
   Replace `./path/to/file` with the actual path found in step 4.

6. The password for Level 6 will be displayed. **Copy this password** for use in the next level.

## Key Concepts

- **Find Command**: A powerful tool for searching files and directories based on various criteria.
- **File Size**: In Unix, file sizes can be specified in bytes (c), kilobytes (k), or megabytes (M).
- **File Permissions**: The executable permission is one of the basic file permissions in Unix-like systems.
- **Piping**: The `|` symbol is used to pipe the output of one command as input to another.

## Useful Commands

- `cd`: Change directory
- `ls`: List directory contents
- `find`: Search for files in a directory hierarchy
- `file`: Determine file type
- `cat`: Concatenate and display file contents
- `grep`: Search for patterns in text

## Tips

- The `find` command is extremely versatile. Familiarize yourself with its options for more efficient file searching.
- When dealing with multiple subdirectories, using `find` can save time compared to manually checking each directory.
- Remember that file sizes and types can be used as search criteria in many Unix commands and tools.

## Next Steps

After obtaining the password, log out of the current session and prepare to log in to Bandit Level 6 using the new password.

## Live Walkthrough

![Bandit Level 5](bandit-level-5.gif)