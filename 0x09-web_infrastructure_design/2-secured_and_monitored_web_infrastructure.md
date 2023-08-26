**Secured and Monitored Three-Server Web Infrastructure Design**

In this design, we'll create a secured and monitored web infrastructure that hosts www.foobar.com. The infrastructure ensures security through firewalls, serves encrypted traffic with an SSL certificate, and utilizes monitoring to ensure performance and availability.

**Servers:**

1. **Server 1 (Load Balancer & Firewall):**
   - Hosts the load balancer (HAproxy) to distribute traffic.
   - Contains a firewall to filter and control incoming and outgoing traffic.
   - Terminates SSL to offload encryption processing from application servers.

2. **Server 2 (Application Server & Firewall):**
   - Hosts one of the application servers.
   - Contains a firewall to secure application-related traffic.

3. **Server 3 (Application Server & Firewall):**
   - Hosts the second application server.
   - Contains a firewall to secure application-related traffic.

**Components:**

- **SSL Certificate:**
  - Enables HTTPS for www.foobar.com, encrypting data transmitted between users and the servers.

- **Monitoring Clients (Data Collectors):**
  - Installed on each server to collect performance metrics and log data.
  - Sends data to monitoring services like Sumo Logic for analysis.

**Firewalls:**

- **Firewall 1 (Load Balancer):**
  - Filters incoming traffic, allowing only necessary ports and protocols.
  - Ensures secure communication between users and the load balancer.

- **Firewall 2 (App Server 1):**
  - Controls incoming traffic to Application Server 1, allowing only needed connections.
  - Protects the application server from unauthorized access.

- **Firewall 3 (App Server 2):**
  - Similar to Firewall 2, controls incoming traffic to Application Server 2.

**Traffic Encryption (HTTPS):**

- HTTPS encrypts data transmitted between users and the server, preventing eavesdropping and data manipulation.

**Monitoring:**

- **Monitoring Tool (Sumo Logic):**
  - Collects performance metrics, logs, and other data from monitoring clients.
  - Provides insights into system health, performance, and potential issues.

- **Data Collection:**
  - Monitoring clients (data collectors) gather data on server performance, application logs, and system metrics.
  - Data is sent to Sumo Logic or other monitoring services for analysis.

**Monitoring Web Server QPS:**

- Monitor the web server's QPS (Queries Per Second) by analyzing request logs and metrics collected from the monitoring clients.
- Identify spikes or drops in QPS and take actions to optimize performance or handle increased traffic.

**Issues with this Infrastructure:**

1. **Terminating SSL at Load Balancer Level:**
   - Termination at the load balancer can expose decrypted traffic within the infrastructure, increasing the risk of data exposure.

2. **Single MySQL Server for Writes:**
   - A single MySQL server for writes creates a single point of failure for write operations.
   - A failure could lead to data loss or unavailability.

3. **Uniform Server Components:**
   - Uniform components across servers might result in inefficient resource allocation.
   - Different components may have varying resource requirements, leading to underutilization or overloading of certain servers.