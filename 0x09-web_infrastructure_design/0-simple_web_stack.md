**Web Infrastructure Design: Single-Server Setup**

![0-simple_web_stack](https://github.com/maggywairigu/alx-system_engineering-devops/assets/68754799/d0ddf622-cfb1-476a-9624-af0cdedd1dec)

**Description**

This Markdown document outlines the design of a basic web infrastructure to host a website accessible via www.foobar.com. It breaks down the components, their roles, interactions, and discusses potential issues with the setup.

1. **Server (8.8.8.8):**
   A server is a physical or virtual machine that stores, processes, and serves content and applications to users over a network. In this case, our single server will host all the necessary components for the website.

2. **Domain Name (www.foobar.com):**
   A domain name is a human-readable address used to access websites. It's translated into an IP address by the Domain Name System (DNS) so that computers can locate each other on the internet.

3. **DNS Record for www:**
   The DNS record "www" in www.foobar.com is a CNAME record. It points to the root domain foobar.com, indicating that when users type www.foobar.com, they should be directed to the same location as foobar.com.

4. **Web Server (Nginx):**
   The web server is responsible for handling incoming requests from users' browsers and delivering the appropriate content. It listens for HTTP requests and serves static files, while also forwarding dynamic requests to the application server.

5. **Application Server:**
   The application server runs the website's codebase and processes dynamic content requests. It interacts with the web server to receive requests, processes them, and generates responses that are then sent back to the web server for delivery to the user.

6. **Application Files (Code Base):**
   This contains the website's source code, including HTML, CSS, JavaScript, and any server-side code. The application server executes this code to generate dynamic content.

7. **Database (MySQL):**
   The database stores and manages the website's data, such as user accounts, posts, or product information. It's used by the application server to read and write data as needed to fulfill user requests.

8. **Communication with User's Computer:**
   When a user wants to access www.foobar.com, they enter the URL in their browser. The browser sends an HTTP request to the server (8.8.8.8). The request goes through the DNS system to resolve the domain name, then reaches the web server. The web server forwards static requests directly to the browser and dynamic requests to the application server. The application server processes these requests, interacts with the database if necessary, generates dynamic content, and sends a response back to the browser for display.

**Issues with this Infrastructure:**

1. **Single Point of Failure (SPOF):**
   Since all components are hosted on a single server, any hardware or software failure can lead to the entire website becoming inaccessible.

2. **Downtime during Maintenance:**
   When maintenance is required, such as deploying new code or updating configurations, the web server needs to be restarted. This downtime can lead to temporary unavailability for users.

3. **Limited Scalability:**
   The infrastructure can't handle high levels of incoming traffic effectively.
   As traffic increases, the single server can become overwhelmed, leading to slow performance or crashes.
