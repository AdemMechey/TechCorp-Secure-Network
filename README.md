# TechCorp — Secure Enterprise Network

## 1. Project Overview

TechCorp is a simulated enterprise network designed to demonstrate network segmentation, inter-VLAN routing, centralized network services, access control, and Linux server administration.

The project uses Cisco Packet Tracer and an Ubuntu virtual machine running inside Oracle VirtualBox.

## 2. Technologies Used

- Cisco Packet Tracer
- Cisco IOS
- VLANs and 802.1Q Trunking
- DHCP and DNS
- Extended Access Control Lists (ACLs)
- SSH and Port Security
- Ubuntu Linux
- Oracle VirtualBox
- Apache
- PHP
- MySQL
- UFW Firewall

## 3. Network Architecture

The Packet Tracer network contains three VLANs:

| VLAN | Name | Network | Gateway |
|---|---|---|---|
| 10 | ADMIN | 192.168.10.0/24 | 192.168.10.1 |
| 20 | EMPLOYEES | 192.168.20.0/24 | 192.168.20.1 |
| 30 | SERVERS | 192.168.30.0/24 | 192.168.30.1 |

Inter-VLAN routing is implemented using Router-on-a-Stick.

## 4. Network Services

- DHCP: Automatic IP configuration for clients.
- DNS: Internal hostname resolution.
- Web Server: Simulated Packet Tracer web server.
- Ubuntu Web Server: Apache and PHP dashboard connected to MySQL.

DNS record:

`intranet.techcorp.local` → `192.168.30.20`

## 5. Security Implementation

- Extended ACL restricting employee access to ADMIN and unauthorized server services.
- SSH version 2 for router management.
- Switch management IP addresses.
- Port Security with sticky MAC addresses.
- Unused switch ports disabled.
- Ubuntu UFW firewall.

## 6. Ubuntu Server

The Ubuntu VM runs:

- Apache Web Server
- PHP
- MySQL database
- TechCorp server monitoring dashboard

Database: `techcorp`

Table: `servers`

The dashboard displays server names, IP addresses, roles, and statuses.

VirtualBox networking:

| Adapter | Mode | IP |
|---|---|---|
| Adapter 1 | NAT | 10.0.2.15 |
| Adapter 2 | Host-only | 192.168.56.10 |

Windows accesses the Ubuntu dashboard through:

`http://192.168.56.10`

**Integration note:** The Ubuntu VM uses a separate VirtualBox Host-only network. It is not directly connected to the Packet Tracer VLAN 30 network.

## 7. Testing and Verification

| Test | Expected result | Result |
|---|---|---|
| DHCP assignment | Correct VLAN addresses | Passed |
| Inter-VLAN routing | Correct gateway reachability | Passed |
| DNS resolution | Internal hostname resolves | Passed |
| Employee website access | HTTP allowed | Passed |
| Employee access to ADMIN | Blocked | Passed |
| Router SSH access | Successful | Passed |
| Switch Port Security | Enabled | Passed |
| Ubuntu Apache | Active | Passed |
| PHP–MySQL connection | Successful | Passed |
| Windows to Ubuntu | Ping and HTTP successful | Passed |
| UFW firewall | Restricted access | Passed |

## 8. Project Structure

```text
TechCorp-Secure-Network/
├── packet-tracer/
├── configs/
├── ubuntu-server/
├── screenshots/
└── README.md
```

## 9. Future Improvements

- Integrate the Ubuntu VM directly into the simulated enterprise network using GNS3.
- Configure HTTPS with TLS certificates.
- Implement automated database backups.
- Introduce a dedicated management VLAN.
- Implement network monitoring.

## 10. Conclusion

This project demonstrates practical enterprise networking and Linux server administration, combining network segmentation, access control, network services, and a database-driven web application.
