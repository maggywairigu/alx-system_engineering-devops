# 0x04. Loops, Conditions, and Parsing

## Description

This project contains a set of Bash scripts that focus on loops, conditions, and parsing. The scripts are designed to help you practice and understand these concepts, as well as improve your scripting skills. Each script accomplishes specific tasks, and your main objective is to write and execute them successfully.

## Table of Contents

1. [Background Context](#background-context)
2. [Resources](#resources)
3. [Learning Objectives](#learning-objectives)
4. [Requirements](#requirements)
5. [Copyright - Plagiarism](#copyright-plagiarism)
6. [Tasks](#tasks)
    - [Task 0: Create a SSH RSA key pair](#task-0-create-a-ssh-rsa-key-pair)
    - [Task 1: For Best School loop](#task-1-for-best-school-loop)
    - [Task 2: While Best School loop](#task-2-while-best-school-loop)
    - [Task 3: Until Best School loop](#task-3-until-best-school-loop)
    - [Task 4: If 9, say Hi!](#task-4-if-9-say-hi)
    - [Task 5: 4 bad luck, 8 is your chance](#task-5-4-bad-luck-8-is-your-chance)
    - [Task 6: Superstitious numbers](#task-6-superstitious-numbers)
    - [Task 7: Clock](#task-7-clock)
    - [Task 8: For ls](#task-8-for-ls)
    - [Task 9: To file, or not to file](#task-9-to-file-or-not-to-file)
    - [Task 10: FizzBuzz](#task-10-fizzbuzz)

## Background Context

The scripts in this project focus on essential concepts in Bash scripting, such as loops (for, while, until), conditional statements (if, else, elif, case), and file parsing. By completing these tasks, you will gain a better understanding of how to create efficient and functional Bash scripts.

## Resources

To complete this project, make use of the following resources:

- Loops sample
- Variable assignment and arithmetic
- Comparison operators
- File test operators
- Making your scripts portable
- `env` command manual
- `cut` command manual
- `for` loop manual
- `while` loop manual
- `until` loop manual
- `if` condition statement manual

## Learning Objectives

By completing this project, you should be able to explain the following topics to others without the help of Google:

- General
  - How to create SSH keys
  - The advantage of using `#!/usr/bin/env bash` over `#!/bin/bash`
  - How to use `while`, `until`, and `for` loops
  - How to use `if`, `else`, `elif`, and `case` condition statements
  - How to use the `cut` command
  - Understanding file and other comparison operators and how to use them

## Requirements

To ensure that your scripts meet the necessary criteria, adhere to the following requirements:

- Allowed editors: `vi`, `vim`, `emacs`
- All scripts will be interpreted on Ubuntu 20.04 LTS
- All script files must be executable
- Your Bash scripts must pass Shellcheck (version 0.7.0) without any error
- The first line of all your Bash scripts should be exactly `#!/usr/bin/env bash`
- The second line of all your Bash scripts should be a comment explaining what the script is doing
- Do not use `awk` in your scripts

## Copyright - Plagiarism

Plagiarism is strictly forbidden and will result in removal from the program. Ensure that you come up with your own solutions for the tasks to meet the learning objectives. Do not copy and paste someone else's work, and do not publish any content from this project.

## Tasks

### Task 0: Create a SSH RSA key pair

**Description:** In this task, you will need to create an SSH RSA key pair. This key pair is necessary to access your own servers hosted on remote data centers via SSH. You must share your public key in the answer file `0-RSA_public_key.pub`, and also fill the SSH public key field of your intranet profile with the generated public key. Keep the private key securely stored in a location such as Dropbox, Google Drive, a password manager, or a USB key. If you add a passphrase to your key, ensure that you save it securely, as it will be required to use the keys later.

### Task 1: For Best School loop

**Description:** Write a Bash script that displays "Best School" 10 times using a `for` loop. The script must meet the requirements specified in the task.

### Task 2: While Best School loop

**Description:** Write a Bash script that displays "Best School" 10 times using a `while` loop. The script must meet the requirements specified in the task.

### Task 3: Until Best School loop

**Description:** Write a Bash script that displays "Best School" 10 times using an `until` loop. The script must meet the requirements specified in the task.

### Task 4: If 9, say Hi!

**Description:** Write a Bash script that displays "Best School" 10 times, but for the 9th iteration, displays "Best School" and then "Hi" on a new line. The script must use a `while` loop and an `if` statement.

### Task 5: 4 bad luck, 8 is your chance

**Description:** Write a Bash script that loops from 1 to 10 and displays "bad luck" for the 4th loop iteration, "good luck" for the 8th loop iteration, and "Best School" for all other iterations. The script must use a `while` loop and `if`, `elif`, and `else` statements.

### Task 6: Superstitious numbers

**Description:** Write a Bash script that displays numbers from 1 to 20 and, for specific loop iterations, displays "bad luck from China," "bad luck from Japan," or "bad luck from Italy." The script must use a `while` loop and the `case` statement.

### Task 7: Clock

**Description:** Write a Bash script that displays the time from 0 to 12 hours and 59 minutes. The script must use a `while` loop to display hours from 0 to 12 and minutes from 1 to 59.

### Task 8: For ls

**Description:** Write a Bash script that lists the content of the current directory in a specific format. The script should only display the part of the name after the first dash (-).

### Task 9: To file, or not to file

**Description:** Write a Bash script that gives information about the "school" file. The script should check if the file exists and if it is empty. If the file exists and is not empty, it should display specific information about it.

### Task 10: FizzBuzz

**Description:** Write a Bash script that displays numbers from 1

 to 100. The script should print "FizzBuzz" for numbers that are multiples of both 3 and 5, "Fizz" for numbers that are multiples of 3, "Buzz" for numbers that are multiples of 5, and the number itself for all other cases.

## Conclusion

This project provides you with hands-on experience in working with loops, conditions, and parsing in Bash scripting. By completing these tasks, you will enhance your understanding of these concepts and improve your scripting skills. Make sure to follow the requirements for each task and use the provided resources to aid your learning. Good luck!