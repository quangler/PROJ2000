# RDS and VDI Information
Info regarding the remote desktop services and virtual desktop infrastructure implementation

**VDI Server IP** - 10.110.111.100 (give it DHCP, Quinn will assign it)
**RDS Pool Server IP** - 10.110.111.101 (give it DHCP, Quinn will assign it)
**RDS Priv Server IP** - 10.110.111.102 (give it DHCP, Quinn will assign it)
## VMs
- **RDS1**
  - OS: Server 2022
  - Services: Remote Desktop Services (all roles except virtualization host)
  - CPU: 2 cores
  - RAM: 4GB
- **RDS2**
  - OS: Server 2022
  - Services: Remote Desktop Services (Session Host Server ONLY)
  - CPU: 2 cores
  - RAM: 4GB
- **RDS3**
  - OS: Server 2022
  - Services: Remote Desktop Services (ALL ROLES + RDS Virtualization host + HyperV)
  - CPU: 4 cores
  - RAM: 16GB