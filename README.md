# Linux Hardening Toolkit

The Linux Hardening Toolkit is a collection of scripts designed to improve the security of Linux systems by automating essential hardening tasks. It helps system administrators and cybersecurity enthusiasts secure their Linux machines with minimal effort.

## Project Overview

The Linux Hardening Toolkit is a collection of automation scripts designed to enhance the security and efficiency of Linux systems. This project focuses on hardening various aspects of a Linux system, including system configuration, network security, user management, and file system permissions. The toolkit automates tasks such as disabling unnecessary services, securing SSH configurations, setting up firewall rules, and ensuring the system is up to date with security patches. By using these scripts, system administrators can quickly improve the overall security posture of their Linux environments.

## Key features of the project include:

- Automated system hardening for a variety of Linux distributions.
- Configuration scripts for securing SSH, firewalls, and user permissions.
- Regular checks for system updates and security patches.
- Comprehensive security settings to prevent unauthorized access and attacks.

## Technologies Used

- **Bash**: The scripting language used for creating the automation scripts to secure and harden the Linux system.
- **Linux Command Line Tools**: Utilizes built-in Linux utilities such as `ufw`, `iptables`, `sshd_config`, `passwd`, and others to implement security measures.
- **Cron Jobs**: Used for scheduling periodic tasks, such as checking for system updates and applying security patches.
- **System Utilities**: Leverages tools like `chmod`, `chown`, and `sysctl` to enforce proper file permissions and system settings.

## Features
- Automates system updates and upgrades.
- Configures basic firewall rules using UFW.
- Hardens SSH settings (disables root login, enforces key-based authentication).
- Monitors logs for suspicious login attempts.
- Manages user accounts and ensures secure file permissions.

## Usage
1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/Linux-Hardening-Toolkit.git
   ```
2. Navigate to the `scripts` folder:
   ```bash
   cd Linux-Hardening-Toolkit/scripts
   ```
3. Run the desired script:
   ```bash
   ./update_system.sh
   ```

4. Navigate to the scripts folder:
   ```bash
   cd Linux-Hardening-Toolkit/scripts
   ```

5. Run the desired script:
   ```bash
   ./update_system.sh
   ```

## Compatibility
Tested on:
- Ubuntu 20.04, 22.04
- CentOS 7, 8
- Debian 10, 11

## Contribution
Feel free to contribute by submitting issues or pull requests.
