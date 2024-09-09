# Bandit Game - Level 11

## Objective
The goal of **Bandit Level 11** is to find the password for Level 12. The password is stored in the file `data.txt`, where all lowercase (a-z) and uppercase (A-Z) letters have been rotated by 13 positions.

---

## Steps to Complete Level 11

1. **Log in to the Bandit server** using the password obtained from Level 10:
   ```bash
   ssh -p 2220 -l bandit11 bandit.labs.overthewire.org
   ```

2. Once logged in, confirm the presence of the `data.txt` file:
   ```bash
   ls -l data.txt
   ```

3. To view the contents of the file, use the `cat` command:
   ```bash
   cat data.txt
   ```
   You'll see a string of text where all letters have been rotated by 13 positions (ROT13 cipher).

4. To decode the ROT13 text and reveal the password, you can use the `tr` command:
   ```bash
   cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'
   ```
   This command does the following:
   - `cat data.txt`: Outputs the content of the file
   - `| tr 'A-Za-z' 'N-ZA-Mn-za-m'`: Translates (rotates) the letters by 13 positions

5. The output of this command will be the decoded content, which should include the password for Level 12.

6. **Copy this password** for use in the next level.

## Key Concepts

- **ROT13 Cipher**: A simple letter substitution cipher that replaces a letter with the 13th letter after it in the alphabet. It's a special case of the Caesar cipher.
- **Text Processing**: This level introduces the `tr` command for character translation.
- **Piping**: The `|` symbol is used to send the output of one command as input to another.

## Useful Commands

- `ls`: List directory contents
- `cat`: Concatenate and display file contents
- `tr`: Translate or delete characters

## Tips

- ROT13 is its own inverse; that is, to undo ROT13, the same algorithm is applied, so the same command can be used for encoding and decoding.
- The `tr` command is very useful for character-based translations and substitutions.
- You can also use online ROT13 decoders if you want to verify your result.
- Remember that ROT13 only affects letters; numbers and special characters remain unchanged.
- If you're curious about how ROT13 works, try encoding a simple message:
  ```bash
  echo "Hello, World!" | tr 'A-Za-z' 'N-ZA-Mn-za-m'
  ```

## Next Steps

After obtaining the password, log out of the current session and prepare to log in to Bandit Level 12 using the new password.

## Live Walkthrough

![Bandit Level 11](bandit-level-11.gif)