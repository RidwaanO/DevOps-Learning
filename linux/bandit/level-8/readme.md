# Bandit Game - Level 8

## Objective
The goal of **Bandit Level 8** is to find the password for Level 9. The password is stored in the file `data.txt` and is the only line of text that occurs only once.

---

## Steps to Complete Level 8

1. **Log in to the Bandit server** using the password obtained from Level 7:
   ```bash
   ssh -p 2220 -l bandit8 bandit.labs.overthewire.org
   ```

2. Once logged in, confirm the presence of the `data.txt` file:
   ```bash
   ls -l data.txt
   ```

3. To find the unique line in the file, we can use a combination of `sort` and `uniq` commands:
   ```bash
   sort data.txt | uniq -u
   ```
   This command does the following:
   - `sort data.txt`: Sorts the lines of the file alphabetically
   - `| uniq -u`: Filters the sorted input and only prints unique lines

4. The output of this command will be the password for Level 9.

5. **Copy this password** for use in the next level.

## Key Concepts

- **Text Processing**: This level builds on text processing skills, focusing on identifying unique content.
- **Sort**: A command that sorts lines of text.
- **Uniq**: A command that reports or omits repeated lines.
- **Piping**: The `|` symbol is used to send the output of one command as input to another.

## Useful Commands

- `ls`: List directory contents
- `sort`: Sort lines of text
- `uniq`: Report or omit repeated lines
  - `-u` option: Only print unique lines

## Tips

- The `uniq` command only detects repeated lines if they are adjacent. This is why sorting the file first is crucial.
- If you want to see the process step-by-step, you can break it down:
  1. `sort data.txt > sorted.txt`
  2. `uniq -u sorted.txt`
- For large files, these operations might take a moment to complete.
- If you're curious about the content of the file, you can use commands like `head`, `tail`, or `wc -l` to get an idea of its structure and size.

## Next Steps

After obtaining the password, log out of the current session and prepare to log in to Bandit Level 9 using the new password.

![Bandit Level 8](bandit-level-8.gif)