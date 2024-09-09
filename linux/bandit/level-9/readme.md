# Bandit Game - Level 9

## Objective
The goal of **Bandit Level 9** is to find the password for Level 10. The password is stored in the file `data.txt` in one of the few human-readable strings, preceded by several '=' characters.

---

## Steps to Complete Level 9

1. **Log in to the Bandit server** using the password obtained from Level 8:
   ```bash
   ssh -p 2220 -l bandit9 bandit.labs.overthewire.org
   ```

2. Once logged in, confirm the presence of the `data.txt` file:
   ```bash
   ls -l data.txt
   ```

3. The file contains both text and binary data. To extract human-readable strings and find the password, use the `strings` command combined with `grep`:
   ```bash
   strings data.txt | grep -E "={2,}"
   ```
   This command does the following:
   - `strings data.txt`: Extracts printable strings from the file
   - `| grep -E "={2,}"`: Filters for lines containing two or more '=' characters in a row

4. Look through the output for a line that contains several '=' characters followed by what looks like a password.

5. The password for Level 10 should be visible in this output. **Copy this password** for use in the next level.

## Key Concepts

- **Binary Files**: Files that may contain non-printable characters or formatted data not meant to be read as text.
- **Strings Command**: A utility that extracts printable strings from a file, which is useful for finding human-readable content in binary files.
- **Regular Expressions**: A powerful way to match patterns in text. The `-E` option in grep enables extended regular expressions.
- **Piping**: The `|` symbol is used to send the output of one command as input to another.

## Useful Commands

- `ls`: List directory contents
- `strings`: Print the sequences of printable characters in files
- `grep`: Search for patterns in text
  - `-E` option: Use extended regular expressions

## Tips

- The `strings` command is particularly useful when dealing with binary files or files with mixed content.
- The regular expression `={2,}` matches two or more '=' characters in a row. You can adjust this if needed (e.g., `={3,}` for three or more).
- If the output is long, you might want to pipe it to `less` for easier viewing:
  ```bash
  strings data.txt | grep -E "={2,}" | less
  ```
- Remember that the password is just one of possibly several strings that match this pattern, so you may need to look through the output to find it.

## Next Steps

After obtaining the password, log out of the current session and prepare to log in to Bandit Level 10 using the new password.

## Live Walkthrough

![Bandit Level 9](bandit-level-9.gif)