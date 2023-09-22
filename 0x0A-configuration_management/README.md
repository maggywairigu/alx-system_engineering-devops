# 0x0A. Configuration Management

## Project Overview

This project focuses on Configuration Management, a critical aspect of DevOps and SysAdmin practices. Configuration management involves automating the setup and maintenance of server configurations to ensure consistency, reliability, and scalability. In this project, you will be using Puppet, a widely used configuration management tool, to perform various tasks related to system configuration.

**Author:** Sylvain Kalache

**Weight:** 1

**Project Dates:**
- Start Date: September 22, 2023, 6:00 AM
- End Date: September 23, 2023, 6:00 AM
- Checker Release Date: September 22, 2023, 12:00 PM
- Auto Review Launch: Scheduled at the project deadline

## Background Context

In the past, while working on an auto-remediation tool called Skynet for SlideShare, an incident occurred due to a bug in the code. Skynet was designed to monitor, scale, and fix Cloud infrastructure using a parallel job-execution system called MCollective. This system allowed commands to be executed on one or multiple servers simultaneously, with the ability to filter servers based on criteria like hostname or metadata.

Unfortunately, a bug in the code caused the filter method to receive a "nil" argument. This resulted in two major issues:

1. MCollective interpreted "nil" as a command to target all servers.
2. The action sent to the servers was to terminate them.

This incident led to 75% of SlideShare's conversion infrastructure servers being shut down, causing significant disruption to users.

Puppet played a crucial role in swiftly restoring the infrastructure to normal operation within an hour, showcasing the power of configuration management in handling such emergencies.

**Lesson Learned:** While writing Puppet code for infrastructure requires an investment of time and effort, it is a must-have for maintaining and recovering complex infrastructure efficiently.

[Read More](https://twitter.com/devopsreact/status/836971570136375296)

## Resources

Before starting this project, it's recommended to review the following resources:

- [Intro to Configuration Management](https://www.example.com/configuration-management-intro)
- [Puppet resource type: file](https://www.example.com/puppet-file-resource) (Check "Resource types" for all manifest types in the left menu)
- [Puppet’s Declarative Language: Modeling Instead of Scripting](https://www.example.com/puppet-declarative-language)
- [Puppet lint](https://www.example.com/puppet-lint)
- [Puppet emacs mode](https://www.example.com/puppet-emacs-mode)

## Requirements

### General

1. All your files will be interpreted on Ubuntu 20.04 LTS.
2. All your files should end with a new line.
3. A README.md file at the root of the project folder is mandatory.
4. Your Puppet manifests must pass puppet-lint version 2.1.1 without any errors.
5. Your Puppet manifests must run without error.
6. Your Puppet manifests' first line must be a comment explaining what the Puppet manifest is about.
7. Your Puppet manifests files must end with the extension .pp.

### Note on Versioning

Your Ubuntu 20.04 VM should have Puppet 5.5 preinstalled.

**Install puppet:**

```shell
$ apt-get install -y ruby=1:2.7+1 --allow-downgrades
$ apt-get install -y ruby-augeas
$ apt-get install -y ruby-shadow
$ apt-get install -y puppet
```

You do not need to attempt to upgrade versions. This project is simply a set of tasks to familiarize you with the basic level syntax, which is virtually identical in newer versions of Puppet.

[Puppet 5 Docs](https://www.example.com/puppet-5-docs)

**Install puppet-lint:**

```shell
$ gem install puppet-lint
```

## Tasks

### 0. Create a file (Mandatory)

Using Puppet, create a file in /tmp.

**Requirements:**

- File path is /tmp/school
- File permission is 0744
- File owner is www-data
- File group is www-data
- File contains "I love Puppet"

**Example:**

```shell
$ puppet-lint --version
puppet-lint 2.5.2

$ puppet-lint 0-create_a_file.pp

$ puppet apply 0-create_a_file.pp

$ ls -l /tmp/school
-rwxr--r-- 1 www-data www-data 13 Mar 19 23:12 /tmp/school

$ cat /tmp/school
I love Puppet
```

**Repo:**

[GitHub Repository: alx-system_engineering-devops](https://github.com/alx-system_engineering-devops/0x0A-configuration_management)

**File:** [0-create_a_file.pp](https://github.com/alx-system_engineering-devops/0x0A-configuration_management/blob/main/0-create_a_file.pp)

### 1. Install a package (Mandatory)

Using Puppet, install Flask from pip3.

**Requirements:**

- Install Flask
- Version must be 2.1.0

**Example:**

```shell
$ puppet apply 1-install_a_package.pp

$ flask --version
Python 3.8.10
Flask 2.1.0
Werkzeug 2.1.1
```

**Repo:**

[GitHub Repository: alx-system_engineering-devops](https://github.com/alx-system_engineering-devops/0x0A-configuration_management)

**File:** [1-install_a_package.pp](https://github.com/alx-system_engineering-devops/0x0A-configuration_management/blob/main/1-install_a_package.pp)

### 2. Execute a command (Mandatory)

Using Puppet, create a manifest that kills a process named "killmenow."

**Requirements:**

- Must use the exec Puppet resource
- Must use pkill

**Example:**

Terminal #0 - starting my process

```shell
$ cat killmenow
#!/bin/bash
while [[ true ]]
do
    sleep 2
done

$ ./killmenow
```

Terminal #1 - executing my manifest

```shell
$ puppet apply 2-execute_a_command.pp
Notice: Compiled catalog for d391259bf577.hsd1.ca.comcast.net in environment production in 0.01 seconds
Notice: /Stage[main]/Main/Exec[killmenow]/returns: executed successfully
Notice: Finished catalog run in 0.10 seconds
```

Terminal #0 - process has been terminated

```shell
$ ./killmenow
Terminated
```

**Repo:**

[GitHub Repository: alx-system_engineering-devops](https://github.com/alx-system_engineering-devops/0x0A-configuration_management)

**File:** [2-execute_a_command.pp](https://github.com/alx-system_engineering-devops/0x0A-configuration_management/blob/main/2-execute_a_command.pp)

## Copyright

Copyright © 2023 ALX. All rights reserved.
