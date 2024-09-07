# Bandit Game - Level 1

## Objective
The goal of **Bandit Level 1** is to find the password for Level 2. The password is stored in a file called `-` located in the home directory.

---

## Steps to Complete Level 1

1. **Log in to the Bandit server** using the password obtained from Level 0:
   ```bash
   ssh -p 2220 -l bandit1 bandit.labs.overthewire.org
   ```

2. Once logged in, **list the contents of the home directory**:
   ```bash
   ls
   ```
   You should see a file named `-`.

3. **Read the contents of the file**:
   - The file name `-` is special because it's often used to signify standard input/output.
   - To read this file, you need to specify the path:
     ```bash
     cat ./-
     ```
   - Alternatively, you can use:
     ```bash
     cat < -
     ```

4. The password for Level 2 will be displayed. **Copy this password** for use in the next level.

## Key Concepts

- **Special Filename**: The `-` character is often used in Unix-like systems to represent standard input/output. When used as a filename, it requires special handling.

- **Relative Path**: Using `./` before the filename tells the system to look in the current directory for the file.

- **Input Redirection**: The `<` symbol is used to redirect input, allowing you to read from the file named `-`.

## Useful Commands

- `ls`: List directory contents
- `cat`: Concatenate and display file contents
- `pwd`: Print working directory

## Tips

- Always be cautious when dealing with special characters in filenames.
- Understanding how to handle unusual filenames is an important skill in Linux/Unix systems.

## Next Steps

After obtaining the password, log out of the current session and prepare to log in to Bandit Level 2 using the new password.

## Live Walkthrough

![Bandit Level 1](bandit-level-1.gif)

