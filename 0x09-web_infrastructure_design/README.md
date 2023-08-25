# 0x09. Web Infrastructure Design Project

Welcome to the Web Infrastructure Design project! In this project, you will be working in a team of three people, including Margaret Maina and Mawlid Haibe. The project aims to enhance your understanding of web infrastructure, DevOps, and SysAdmin concepts. You'll be designing and explaining various web infrastructure scenarios while addressing redundancy, security, and monitoring considerations.

## Project Details

- **Project Start:** August 24, 2023, 6:00 AM
- **Project End:** August 28, 2023, 6:00 AM
- **Author:** Sylvain Kalache, co-founder at Holberton School
- **Weight:** 1
- **Team Members:** Margaret Maina, Mawlid Haibe

## Concepts

Throughout this project, you will delve into the following concepts:

- DNS (Domain Name System)
- Monitoring
- Web Server
- Network Basics
- Load Balancer
- Server
- High Availability
- Security (Firewalls, SSL)
- Database (MySQL)

## Learning Objectives

By the end of this project, you should be able to:

- Draw a comprehensive diagram of the web stack you built as part of the SysAdmin/DevOps track projects.
- Explain the purpose and function of each component in your web infrastructure.
- Describe system redundancy and its importance.
- Recognize and understand the acronyms: LAMP, SPOF, QPS.
- Demonstrate your understanding of various concepts through whiteboarding.

## Requirements

To successfully complete this project, ensure the following:

- Create a `README.md` file at the root of the project folder to document your work.
- For each task, create a whiteboard diagram that illustrates your design.
- After whiteboarding, take a screenshot of your diagram and upload it to an image hosting service.
- In your answers, provide the links to the screenshots and the corresponding GitHub repository links.

## Tasks

### Task 0: Simple Web Stack

Design a single-server web infrastructure that hosts a website reachable via `www.foobar.com`.

**Requirements:**

- 1 server
- 1 web server (Nginx)
- 1 application server
- 1 application files (your code base)
- 1 database (MySQL)
- Domain name `www.foobar.com` with a `www` record pointing to server IP `8.8.8.8`

**Explain:**

- The role of a server
- Purpose of the domain name
- Type of DNS record for `www.foobar.com`
- Roles of web server, application server, and database
- How the server communicates with the user's computer
- Issues with the infrastructure (SPOF, downtime during maintenance, scalability)

### Task 1: Distributed Web Infrastructure

Design a three-server web infrastructure for `www.foobar.com`.

**Requirements:**

- 2 servers
- 1 web server (Nginx)
- 1 application server
- 1 load balancer (HAproxy)
- 1 set of application files
- 1 database (MySQL)

**Explain:**

- Reasons for adding each component
- Load balancer's distribution algorithm and setup
- Active-Active vs. Active-Passive setup
- Working of a Primary-Replica database cluster
- Differences between Primary and Replica nodes
- Issues with the infrastructure (SPOF, security, lack of monitoring)

### Task 2: Secured and Monitored Web Infrastructure

Design a secured, encrypted, and monitored three-server web infrastructure for `www.foobar.com`.

**Requirements:**

- 3 firewalls
- 1 SSL certificate for HTTPS
- 3 monitoring clients
- Maintain the components from the previous task

**Explain:**

- Reasons for adding firewalls, HTTPS, and monitoring clients
- Role of firewalls in security
- Significance of serving traffic over HTTPS
- Purpose of monitoring
- How monitoring tools collect data
- Steps to monitor web server QPS
- Issues with the infrastructure (SSL termination, single MySQL write server, identical components)

### Task 3: Scale Up

Design a scalable web infrastructure with separate components.

**Requirements:**

- 1 additional server
- Configure a cluster of load balancers
- Separate components onto dedicated servers

**Explain:**

- Reasons for adding the additional server and load balancer cluster
- Benefits of separating components onto dedicated servers

