# Bandit Game - Level 3

## Objective
The goal of **Bandit Level 3** is to find the password for Level 4. The password is stored in a hidden file in the `inhere` directory.

---

## Steps to Complete Level 3

1. **Log in to the Bandit server** using the password obtained from Level 2:
   ```bash
   ssh -p 2220 -l bandit3 bandit.labs.overthewire.org
   ```

2. Once logged in, **navigate to the `inhere` directory**:
   ```bash
   cd inhere
   ```

3. **List all files, including hidden ones**:
   ```bash
   ls -la
   ```
   The `-l` option provides a long listing format, and `-a` shows all files, including those starting with a dot (hidden files).

4. You should see a hidden file (its name starts with a dot). **Read the contents of this hidden file**:
   ```bash
   cat .hidden
   ```
   Replace `.hidden` with the actual name of the hidden file you found.

5. The password for Level 4 will be displayed. **Copy this password** for use in the next level.

## Key Concepts

- **Hidden Files**: In Unix-like systems, files and directories whose names begin with a dot (.) are considered hidden. They don't show up in normal directory listings.

- **Directory Navigation**: The `cd` command is used to change directories.

- **Listing Options**: The `ls` command has various options to modify its output. `-l` provides a long listing format with more details, and `-a` shows all files, including hidden ones.

## Useful Commands

- `cd`: Change directory
- `ls`: List directory contents
- `cat`: Concatenate and display file contents
- `pwd`: Print working directory

## Tips

- Always check for hidden files when searching for information in a Unix-like system.
- Combining `ls` options (like `-la`) is a common practice to get a detailed view of all files in a directory.
- Remember that `.` refers to the current directory and `..` refers to the parent directory in Unix-like systems.

## Next Steps

After obtaining the password, log out of the current session and prepare to log in to Bandit Level 4 using the new password.

