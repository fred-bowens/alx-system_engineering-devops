The main role of a web server is to store, process, and deliver web content to clients (usually web browsers) over the internet using the HTTP or HTTPS protocol
A child process is a subprocess created by another process to perform tasks. It's a key concept in multitasking operating systems and is widely used for parallel processing, background work, and separating concerns in software applications.
Web servers typically use parent and child processes to improve performance, scalability, and reliability. This process-based architecture allows the server to handle multiple client requests concurrently, while maintaining control and stability.
The main HTTP request methods (GET, POST, PUT, DELETE, PATCH, HEAD, OPTIONS) define how a client interacts with a server. Each method has a specific role in CRUD operations (Create, Read, Update, Delete) and is fundamental to how the web works.
DNS = Domain Name System, and it helps translate domain names into IP addresses so users can access websites easily.
The main role of DNS (Domain Name System) is to translate domain names into IP addresses so that web browsers and other applications can find and communicate with websites and online services.
Record Type	Use	Example
A -	Maps domain to IP (IPv4)	example.com → 192.0.2.1
CNAME -	Points domain to another name	www → example.com
TXT -	Holds text (for verification, email security)	SPF, DKIM, etc.
MX -	Routes email to mail servers	example.com → mail server

# 0-world_wide_web

## Description

This project configures DNS subdomains and includes a script to audit DNS records of a domain and its subdomains.

## DNS Configuration

I configure my domain zone to include the following subdomains:

| Subdomain | Record Type | Points to          |
|-----------|-------------|--------------------|
| www       | A           | lb-01 IP address   |
| lb-01     | A           | lb-01 IP address   |
| web-01    | A           | web-01 IP address  |
| web-02    | A           | web-02 IP address  |

## Script: `0-world_wide_web`

### Usage

```bash
./0-world_wide_web <domain> [subdomain]
