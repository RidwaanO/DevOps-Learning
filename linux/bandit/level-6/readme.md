# Bandit Game - Level 6

## Objective
The goal of **Bandit Level 6** is to find the password for Level 7. The password is stored somewhere on the server and has the following properties:
- Owned by user bandit7
- Owned by group bandit6
- 33 bytes in size

---

## Steps to Complete Level 6

1. **Log in to the Bandit server** using the password obtained from Level 5:
   ```bash
   ssh -p 2220 -l bandit6 bandit.labs.overthewire.org
   ```

2. Once logged in, we need to search the entire server. Let's use the `find` command:
   ```bash
   find / -user bandit7 -group bandit6 -size 33c 2>/dev/null
   ```
   This command does the following:
   - `/`: Start searching from the root directory
   - `-user bandit7`: Look for files owned by user bandit7
   - `-group bandit6`: Look for files owned by group bandit6
   - `-size 33c`: Find files exactly 33 bytes in size
   - `2>/dev/null`: Redirect error messages to /dev/null to avoid cluttering the output

3. The command will output the path to the file meeting all criteria. There might be permission denied messages, which we've redirected.

4. **Read the contents of the file** found:
   ```bash
   cat /path/to/file
   ```
   Replace `/path/to/file` with the actual path found in step 2.

5. The password for Level 7 will be displayed. **Copy this password** for use in the next level.

## Key Concepts

- **Root Directory**: The `/` represents the root directory in Unix-like systems, which is the top-level directory.
- **File Ownership**: In Unix-like systems, each file is associated with an owner (user) and a group.
- **Error Redirection**: `2>/dev/null` redirects standard error (file descriptor 2) to /dev/null, effectively discarding error messages.
- **Permissions**: You might encounter "Permission denied" errors when searching system-wide, which is normal for directories you don't have access to.

## Useful Commands

- `find`: Search for files in a directory hierarchy
- `cat`: Concatenate and display file contents
- `ls -l`: List files in long format, showing permissions, owner, and group

## Tips

- When searching system-wide, you'll often encounter permissions issues. It's important to filter out these error messages to focus on the results you can access.
- The `/dev/null` is often called the "bit bucket" - it's a special file that discards all data written to it.
- Remember that file ownership and size can be powerful criteria when searching for specific files.

## Next Steps

After obtaining the password, log out of the current session and prepare to log in to Bandit Level 7 using the new password.

