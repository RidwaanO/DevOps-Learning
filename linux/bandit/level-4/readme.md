# Bandit Game - Level 4

## Objective
The goal of **Bandit Level 4** is to find the password for Level 5. The password is stored in the only human-readable file in the `inhere` directory.

---

## Steps to Complete Level 4

1. **Log in to the Bandit server** using the password obtained from Level 3:
   ```bash
   ssh -p 2220 -l bandit4 bandit.labs.overthewire.org
   ```

2. Once logged in, **navigate to the `inhere` directory**:
   ```bash
   cd inhere
   ```

3. **List all files in the directory**:
   ```bash
   ls -la
   ```
   You should see multiple files named `-file00`, `-file01`, `-file02`, etc.

4. To find the human-readable file, you can use the `file` command on all files:
   ```bash
   file ./-*
   ```
   This command will show the file type of each file in the directory.

5. Alternatively, you can use the `strings` command to display readable characters from each file:
   ```bash
   strings ./-*
   ```

6. Once you've identified the human-readable file, **read its contents**:
   ```bash
   cat ./-fileXX
   ```
   Replace `XX` with the number of the file you identified as human-readable.

7. The password for Level 5 will be displayed. **Copy this password** for use in the next level.

## Key Concepts

- **File Types**: Not all files contain text. Some may contain binary data or other non-human-readable formats.

- **File Command**: The `file` command in Unix-like systems is used to determine the type of a file.

- **Strings Command**: The `strings` command prints the printable character sequences that are at least 4 characters long in files.

- **Wildcards**: The `*` character is a wildcard that matches any sequence of characters in filenames.

## Useful Commands

- `cd`: Change directory
- `ls`: List directory contents
- `file`: Determine file type
- `strings`: Print the strings of printable characters in files
- `cat`: Concatenate and display file contents

## Tips

- When dealing with multiple files of unknown content, commands like `file` and `strings` can be very helpful.
- Remember to use `./-` before filenames starting with `-` to prevent them from being interpreted as command options.
- You can use output redirection (`>`) or piping (`|`) with `grep` to filter and find specific patterns in the output of `strings` or `file` commands.

## Next Steps

After obtaining the password, log out of the current session and prepare to log in to Bandit Level 5 using the new password.

## Live Walkthrough

![Bandit Level 4](bandit-level-4.gif)