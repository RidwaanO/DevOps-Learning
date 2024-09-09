# Bandit Game - Level 12

## Objective
The goal of **Bandit Level 12** is to find the password for Level 13. The password is stored in the file `data.txt`, which is a hexdump of a file that has been repeatedly compressed.

---

## Steps to Complete Level 12

1. **Log in to the Bandit server** using the password obtained from Level 11:
   ```bash
   ssh -p 2220 -l bandit12 bandit.labs.overthewire.org
   ```

2. Create a working directory in `/tmp` and copy the data file there:
   ```bash
   mkdir /tmp/myname12
   cp data.txt /tmp/myname12
   cd /tmp/myname12
   ```

3. Reverse the hexdump to create the original binary file:
   ```bash
   xxd -r data.txt > data
   ```

4. Determine the file type and decompress accordingly. You'll need to repeat this process multiple times:
   ```bash
   file data
   ```
   Depending on the file type, use the appropriate decompression tool:
   - For gzip: `mv data data.gz && gunzip data.gz`
   - For bzip2: `mv data data.bz2 && bunzip2 data.bz2`
   - For tar: `mv data data.tar && tar xf data.tar`

5. Repeat step 4 until you get an ASCII text file.

6. Once you have the ASCII text file, display its contents:
   ```bash
   cat data
   ```

7. The output will be the password for Level 13. **Copy this password**.

## Key Concepts

- **Hexdump**: A hexadecimal view of computer data, often from an executable file or disk storage.
- **File Compression**: The process of encoding information using fewer bits, often to reduce storage or transmission requirements.
- **File Types**: Different file formats require different tools for decompression.

## Useful Commands

- `mkdir`: Make directory
- `cp`: Copy files
- `cd`: Change directory
- `xxd`: Make a hexdump or reverse it
- `file`: Determine file type
- `mv`: Move (rename) files
- `gunzip`, `bunzip2`, `tar`: Decompression tools

## Tips

- Always check the file type before attempting decompression. The `file` command is your friend.
- You may need to rename files to add the correct extension before some decompression tools will work.
- Keep track of your decompression steps. You might need to reverse them if you're ever compressing data.
- The `/tmp` directory is often used for temporary files and is typically writable by all users.
- Be patient! This level involves multiple steps of decompression.

## Next Steps

After obtaining the password, clean up your temporary directory:
```bash
rm -rf /tmp/myname12
```
Then log out of the current session and prepare to log in to Bandit Level 13 using the new password.

