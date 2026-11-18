CREATE DATABASE techcorp;

USE techcorp;

CREATE TABLE servers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    ip_address VARCHAR(45) NOT NULL,
    role VARCHAR(100) NOT NULL,
    status VARCHAR(20) DEFAULT 'Online'
);

INSERT INTO servers (name, ip_address, role, status)
VALUES
('Ubuntu Server', '192.168.30.30', 'Web Server', 'Online'),
('DNS Server', '192.168.30.10', 'DNS and DHCP', 'Online');