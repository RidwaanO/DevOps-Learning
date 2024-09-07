# Bandit Game - Level 2

## Objective
The goal of **Bandit Level 2** is to find the password for Level 3. The password is stored in a file called `spaces in this filename` located in the home directory.

---

## Steps to Complete Level 2

1. **Log in to the Bandit server** using the password obtained from Level 1:
   ```bash
   ssh -p 2220 -l bandit2 bandit.labs.overthewire.org
   ```

2. Once logged in, **list the contents of the home directory**:
   ```bash
   ls
   ```
   You should see a file named `spaces in this filename`.

3. **Read the contents of the file**:
   - Because the filename contains spaces, you need to handle it specially.
   - Use one of the following methods:
     
     a. Enclose the filename in quotes:
     ```bash
     cat "spaces in this filename"
     ```
     
     b. Use backslashes to escape the spaces:
     ```bash
     cat spaces\ in\ this\ filename
     ```

4. The password for Level 3 will be displayed. **Copy this password** for use in the next level.

## Key Concepts

- **Filenames with Spaces**: In Unix-like systems, spaces in filenames can cause issues because the space is typically used to separate command arguments.

- **Quoting**: Enclosing a filename in quotes (single or double) tells the shell to treat the entire string as a single argument.

- **Escaping**: Using a backslash (`\`) before a space or other special character tells the shell to treat that character literally, not as a special character.

## Useful Commands

- `ls`: List directory contents
- `cat`: Concatenate and display file contents
- `pwd`: Print working directory

## Tips

- When dealing with filenames or paths containing spaces or special characters, always use quotes or escape characters.
- Tab completion can be helpful in handling filenames with spaces. Type the first few characters and press Tab to auto-complete.

## Next Steps

After obtaining the password, log out of the current session and prepare to log in to Bandit Level 3 using the new password.

