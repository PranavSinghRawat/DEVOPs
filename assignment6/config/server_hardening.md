# Linux Server Hardening Checklist

When managing a Linux-based DevOps server, security is paramount. Here are the basic steps taken to "harden" (secure) the server:

1.  **SSH Security**:
    -   Disable password-based login; use SSH keys instead.
    -   Change the default SSH port (22) to something non-standard (e.g., 2222).
    -   Disable `root` login via SSH.

2.  **Firewall (UFW)**:
    -   Allow only necessary ports (SSH, HTTP, HTTPS, Jenkins port 8080).
    -   Block all other incoming traffic.

3.  **Regular Updates**:
    -   Automate security updates using `unattended-upgrades`.

4.  **User Access**:
    -   Practice the "Principle of Least Privilege." Give users only the permissions they absolutely need.
