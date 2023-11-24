# Configuration Management Project

## Overview

This project focuses on configuration management, DevOps practices, SysAdmin tasks, scripting, and Continuous Integration/Continuous Deployment (CI/CD) using Puppet. 

## Background Context

The inspiration for this project comes from a past experience working on an auto-remediation tool, Skynet, during employment at SlideShare. An incident involving a bug in the code resulted in unintended consequences, highlighting the importance of configuration management. Puppet played a crucial role in restoring the infrastructure efficiently.

Check out the tweet for more context: [DevOpsReact Tweet](https://twitter.com/devopsreact/status/836971570136375296)

## Resources

Before starting the tasks, it is recommended to familiarize yourself with the following resources:

- [Intro to Configuration Management](<Link to the resource>)
- [Puppet resource type: file](<Link to the resource>)
- [Puppet’s Declarative Language: Modeling Instead of Scripting](<Link to the resource>)
- [Puppet lint](<Link to the resource>)
- [Puppet emacs mode](<Link to the resource>)

## Requirements

### General

- All files will be interpreted on Ubuntu 20.04 LTS.
- Files should end with a new line.
- A `README.md` file at the root of the folder is mandatory.
- Puppet manifests must pass `puppet-lint` version 2.1.1 without any errors.
- Puppet manifests must run without errors.
- Puppet manifests' first line must be a comment explaining the manifest's purpose.
- Puppet manifest files must end with the extension `.pp`.

### Versioning

- Your Ubuntu 20.04 VM should have Puppet 5.5 preinstalled.
- Install Puppet using the following commands:

```bash
$ apt-get install -y ruby=1:2.7+1 --allow-downgrades
$ apt-get install -y ruby-augeas
$ apt-get install -y ruby-shadow
$ apt-get install -y puppet
```

- You do not need to attempt to upgrade versions. This project is designed to familiarize you with basic syntax.

## Tasks

### Task 0: Create a File

- Using Puppet, create a file in `/tmp`.
  
#### Requirements:

- File path is `/tmp/school`.
- File permission is `0744`.
- File owner is `www-data`.
- File group is `www-data`.
- File contains the text: "I love Puppet".

Refer to [Task 0 File](./0x0A-configuration_management/0-create_a_file.pp) for an example.

### Task 1: Install a Package

- Using Puppet, install Flask from pip3.

#### Requirements:

- Install Flask.
- Version must be 2.1.0.

Refer to [Task 1 File](./0x0A-configuration_management/1-install_a_package.pp) for an example.

### Task 2: Execute a Command

- Using Puppet, create a manifest that kills a process named `killmenow`.

#### Requirements:

- Must use the `exec` Puppet resource.
- Must use `pkill`.

Refer to [Task 2 File](./0x0A-configuration_management/2-execute_a_command.pp) for an example.

## How to Use

1. Clone the repository:

```bash
$ git clone https://github.com/your-username/alx-system_engineering-devops.git
$ cd alx-system_engineering-devops/0x0A-configuration_management
```

2. Navigate to the specific task directory.

3. Run Puppet with the corresponding manifest:

```bash
$ puppet apply <filename>.pp
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
