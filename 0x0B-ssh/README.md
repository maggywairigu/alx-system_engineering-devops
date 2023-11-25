# Project 0x0B. SSH

## Table of Contents

- [Background Context](#background-context)
- [Resources](#resources)
- [Learning Objectives](#learning-objectives)
- [Copyright - Plagiarism](#copyright---plagiarism)
- [Requirements](#requirements)
- [Tasks](#tasks)
  - [0. Use a private key](#0-use-a-private-key)
  - [1. Create an SSH key pair](#1-create-an-ssh-key-pair)
  - [2. Client configuration file](#2-client-configuration-file)
  - [3. Let me in!](#3-let-me-in)
  - [4. Client configuration file (w/ Puppet)](#4-client-configuration-file-w-puppet)

## Background Context

This project involves working with SSH (Secure Shell) to connect to a remote server using an RSA key pair instead of a password. The project aims to enhance your understanding of servers, SSH, and key authentication. You will configure your local SSH client and connect to a remote Ubuntu server using specific guidelines.

## Resources

Before starting the tasks, it is recommended to read or watch the following resources:

- [What is a (physical) server - text](https://example.com)
- [What is a (physical) server - video](https://example.com)
- [SSH essentials](https://example.com)
- [SSH Config File](https://example.com)
- [Public Key Authentication for SSH](https://example.com)
- [How Secure Shell Works](https://example.com)
- [SSH Crash Course](https://example.com) (Long, but highly informative. Watch this if configuring SSH is still confusing. It may be helpful to watch at x1.25 speed or above.)
- [Understanding the SSH Encryption and Connection Process](https://example.com)
- [Secure Shell Wiki](https://example.com)
- [IETF RFC 4251 (Description of the SSH Protocol)](https://example.com)
- [Internet Engineering Task Force](https://example.com)
- `man` or `help`:
  - `ssh`
  - `ssh-keygen`
  - `env`

## Learning Objectives

Upon completion of this project, you should be able to explain:

- General
  - What is a server
  - Where servers usually live
  - What is SSH
  - How to create an SSH RSA key pair
  - How to connect to a remote host using an SSH RSA key pair
  - The advantage of using `#!/usr/bin/env bash` instead of `/bin/bash`

## Copyright - Plagiarism

You are responsible for creating solutions for the tasks on your own. Copying and pasting someone else’s work, as well as publishing the content of this project, is strictly forbidden and will result in removal from the program.

## Requirements

- **General:**
  - Allowed editors: `vi`, `vim`, `emacs`
  - All files interpreted on Ubuntu 20.04 LTS
  - All files should end with a new line
  - A `README.md` file at the root of the folder is mandatory
  - All Bash script files must be executable
  - The first line of all Bash scripts should be `#!/usr/bin/env bash`
  - The second line of all Bash scripts should be a comment explaining the script's purpose
- **Your servers:**
  - Server information available in the intranet's "my servers" section
  - Server configured with Ubuntu 20.04 LTS

## Tasks

### 0. Use a private key

**File:** `0-use_a_private_key`

Write a Bash script that uses SSH to connect to your server using the private key `~/.ssh/school` with the user `ubuntu`.

**Requirements:**

- Use only single-character flags for SSH
- Do not use `-l`
- No need to handle the case of a private key protected by a passphrase

Example:

```bash
sylvain@ubuntu$ ./0-use_a_private_key
ubuntu@server01:~$ exit
Connection to 8.8.8.8 closed.
sylvain@ubuntu$
```

**Repo:**

- GitHub repository: `alx-system_engineering-devops`
- Directory: `0x0B-ssh`
- File: `0-use_a_private_key`

### 1. Create an SSH key pair

**File:** `1-create_ssh_key_pair`

Write a Bash script that creates an RSA key pair.

**Requirements:**

- Name of the created private key must be `school`
- Number of bits in the created key to be created: `4096`
- The created key must be protected by the passphrase `betty`

Example:

```bash
sylvain@ubuntu$ ls
1-create_ssh_key_pair
sylvain@ubuntu$ ./1-create_ssh_key_pair
Generating public/private rsa key pair.
Your identification has been saved in school.
Your public key has been saved in school.pub.
The key fingerprint is:
5d:a8:c1:f5:98:b6:e5:c0:9b:ee:02:c4:d4:01:f3:ba vagrant@ubuntu
The key's randomart image is:
+--[ RSA 4096]----+
|      oo...      |
|      .+.o =     |
|     o  + B +    |
|      o. = O     |
|     .. S = .    |
|      .. .       |
|      E.  .      |
|        ..       |
|         ..      |
+-----------------+
sylvain@ubuntu$ ls
1-create_ssh_key_pair school  school.pub
sylvain@ubuntu$
```

**Repo:**

- GitHub repository: `alx-system_engineering-devops`
- Directory: `0x0B-ssh`
- File: `1-create_ssh_key_pair`

### 2. Client configuration file

**File:** `2-ssh_config`

Your machine has an SSH configuration file for the local SSH client. Configure it to use the private key `~/.ssh/school` and refuse to authenticate using a password.

Example:

```bash
sylvain@ubuntu$ ssh -v ubuntu@98.98.98.98
OpenSSH_6.6.1, OpenSSL 1.0.1f 6 Jan 2014
debug1: Reading configuration data /etc/ssh/ssh_config
debug1: /etc/ssh/ssh_config line 47: Applying options for *
debug1: Connecting to 98.98.98.98 port 22.
...
Authenticated to 98.98.98.98 ([98.98.98.98]:22).
...
ubuntu@magic-server:~$
```

**Repo:**

- GitHub repository: `alx-system_engineering-devops`
- Directory: `0x0B-ssh`
- File: `2-ssh_config`

### 3. Let me in!

**File:** (No specific file)

Add the SSH public key provided in the task description to your server so that the Ubuntu user can connect.

```plaintext
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDNdtrNGtTXe5Tp1EJQop8mOSAuR

GLjJ6DW4PqX4wId/Kawz35ESampIqHSOTJmbQ8UlxdJuk0gAXKk3Ncle4safGYqM/VeDK3LN5iAJxf4kcaxNtS3eVxWBE5iF3FbIjOqwxw5Lf5sRa5yXxA8HfWidhbIG5TqKL922hPgsCGABIrXRlfZYeC0FEuPWdr6smOElSVvIXthRWp9cr685KdCI+COxlj1RdVsvIo+zunmLACF9PYdjB2s96Fn0ocD3c5SGLvDOFCyvDojSAOyE70ebIElnskKsDTGwfT4P6jh9OBzTyQEIS2jOaE5RQq4IB4DsMhvbjDSQrP0MdCLgwkN
```

**Repo:**

- GitHub repository: `alx-system_engineering-devops`
- Directory: `0x0B-ssh`

### 4. Client configuration file (w/ Puppet)

**File:** `100-puppet_ssh_config.pp`

Use Puppet to make changes to your client SSH configuration file. Set it up so that you can connect to a server without typing a password.

**Requirements:**

- Your SSH client configuration must be configured to use the private key `~/.ssh/school`
- Your SSH client configuration must be configured to refuse authentication using a password

Example:

```bash
vagrant@ubuntu:~$ sudo puppet apply 100-puppet_ssh_config.pp
Notice: Compiled catalog for ubuntu-xenial in environment production in 0.11 seconds
Notice: /Stage[main]/Main/File_line[Turn off passwd auth]/ensure: created
Notice: /Stage[main]/Main/File_line[Declare identity file]/ensure: created
Notice: Finished catalog run in 0.03 seconds
vagrant@ubuntu:~$
```

**Repo:**

- GitHub repository: `alx-system_engineering-devops`
- Directory: `0x0B-ssh`
- File: `100-puppet_ssh_config.pp`
