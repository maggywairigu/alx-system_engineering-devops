**Three-Server Web Infrastructure Design**

![1-distributed_web_infrastructure](https://github.com/maggywairigu/alx-system_engineering-devops/assets/68754799/31d3ad53-8dc0-450d-9257-ec7db9b262b4)

In this design, we'll use three servers to host the website www.foobar.com. We'll have a load balancer (HAproxy) to distribute traffic, a pair of application servers for redundancy, and a MySQL database cluster for data storage.

**Servers:**

1. **Server 1 (Web Server):**
   - Hosts the Nginx web server to handle incoming requests and static content delivery.
   - Serves as the entry point for user requests.

2. **Server 2 (Application Server 1):**
   - Hosts one of the application servers to process dynamic content requests.
   - Executes the code base to generate dynamic content.

3. **Server 3 (Application Server 2):**
   - Hosts the second application server for redundancy and load balancing.
   - Helps distribute the load from the load balancer.

**Components:**

- **Load Balancer (HAproxy):**
  - Distributes incoming requests across the two application servers to balance the load and improve performance.
  - Utilizes a Round Robin distribution algorithm to evenly distribute requests among the servers.

- **Application Files (Code Base):**
  - Contains the website's source code, including HTML, CSS, JavaScript, and server-side code.
  - Used by both application servers to generate dynamic content.

- **Database (MySQL Cluster):**
  - Consists of a Primary-Replica (Master-Slave) setup.
  - The Primary node (Master) handles write operations, while the Replica node (Slave) replicates data from the Primary node and handles read operations.
  - Provides redundancy and data availability.

**Load Balancer Configuration:**

- **Distribution Algorithm:**
  - Round Robin: Requests are distributed in a circular manner, evenly sending them to each available server.

- **Active-Active Setup:**
  - Both application servers are actively processing requests.
  - Load balancer directs traffic to both servers to share the load.

**Database Primary-Replica Cluster:**

- **Primary Node:**
  - Handles write operations, ensuring data consistency.
  - Updates are made on the Primary node and then replicated to the Replica node.

- **Replica Node:**
  - Handles read operations, reducing the load on the Primary node.
  - Provides redundancy and read scaling.

**Issues with this Infrastructure:**

1. **Single Point of Failure (SPOF):**
   - The load balancer could be a single point of failure. If it fails, the entire setup might be affected.

2. **Security Issues:**
   - Lack of firewall: The servers might be vulnerable to unauthorized access.
   - No HTTPS: Data transmission is insecure, potentially leading to data interception.

3. **No Monitoring:**
   - Without proper monitoring tools, it's challenging to detect and address performance issues, downtimes, or anomalies.
