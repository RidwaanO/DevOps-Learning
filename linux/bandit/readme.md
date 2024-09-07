
# Bandit Game - Level 0

## Objective
The goal of **Bandit Level 0** is to connect to the remote server using SSH. The server's login credentials are provided in the Bandit game instructions. The objective of this level is to successfully log in to the server.

---

## Steps to Connect

1. **Open a terminal** on your local machine.
   
2. **Run the following SSH command** to connect to the Bandit server:
   ```bash
   ssh -p 2220 -l bandit0 bandit.labs.overthewire.org 
   ```

- **`-p 2220`** specifies the port number (since the default SSH port is 22, we use 2220 here).

- **`-l bandit0`** specifies the username to use for the login.

- **`bandit.labs.overthewire.org`** is the server's address.


## What Happens After Logging In

- Once you log in successfully, you will be in the shell as the user `bandit0`.
- You can explore the system using basic commands like:
  - **`ls`**: List files in the current directory.
  - **`pwd`**: Print the working directory.

### Retrieving the Password for Bandit Level 1

The password for **Bandit Level 1** is stored in a file called `readme`. Follow these steps to retrieve it:

1. **Run the `ls` command** to list the files in the current directory:
   ```bash
   ls 
   ```
2. **Run the `cat` command** to display the content of the `readme` file, which contains the password:
    ```bash
    cat readme
    ```
3. Copy the password that appears in the terminal. This password will be needed to log into Bandit Level 1.