# Bandit Game - Level 10

## Objective
The goal of **Bandit Level 10** is to find the password for Level 11. The password is stored in the file `data.txt`, which contains base64 encoded data.

---

## Steps to Complete Level 10

1. **Log in to the Bandit server** using the password obtained from Level 9:
   ```bash
   ssh -p 2220 -l bandit10 bandit.labs.overthewire.org
   ```

2. Once logged in, confirm the presence of the `data.txt` file:
   ```bash
   ls -l data.txt
   ```

3. To view the contents of the file, use the `cat` command:
   ```bash
   cat data.txt
   ```
   You'll see a string of base64 encoded data.

4. To decode the base64 data and reveal the password, use the `base64` command with the `-d` option:
   ```bash
   base64 -d data.txt
   ```

5. The output of this command will be the decoded content, which should include the password for Level 11.

6. **Copy this password** for use in the next level.

## Key Concepts

- **Base64 Encoding**: A method of encoding binary data using 64 characters. It's commonly used to encode binary data for transmission over text-based protocols.
- **Data Encoding/Decoding**: The process of converting data from one format to another, often for the purpose of data transfer or storage.

## Useful Commands

- `ls`: List directory contents
- `cat`: Concatenate and display file contents
- `base64`: Encode/decode data and print to standard output
  - `-d` option: Decode data

## Tips

- Base64 encoding is often used to transmit binary data over mediums that only reliably support text content.
- You can also use the `base64` command to encode text. For example:
  ```bash
  echo "Hello, World!" | base64
  ```
  And then decode it:
  ```bash
  echo "SGVsbG8sIFdvcmxkIQo=" | base64 -d
  ```
- If you're curious about the encoded content, you can use `wc -c data.txt` to see how many characters are in the encoded data.
- Remember that base64 encoded data is typically longer than the original data due to the encoding overhead.

## Next Steps

After obtaining the password, log out of the current session and prepare to log in to Bandit Level 11 using the new password.

## Live Walkthrough

![Bandit Level 10](bandit-level-10.gif)
