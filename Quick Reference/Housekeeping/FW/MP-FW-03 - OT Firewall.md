### MP-FW-03
The purpose of this firewall is to contain the OT network securely within the greater UltraSol network.
#### Interface Configuration

|      Int Name      | VMNET | VLAN |   IP Address    |     DHCP Scope     |                                 Notes                                 |
| :----------------: | :---: | :--: | :-------------: | :----------------: | :-------------------------------------------------------------------: |
|        WAN         |   3   | ---  | 10.110.50.7/24  |        ---         |                   used for admin access of web GUI                    |
|        LAN         |   7   | ---  | 172.16.107.2/24 |        ---         |           temporary, for ensuring web GUI stays accessible            |
|   VMNET11Servers   |  11   | ---  |       ---       |        ---         |                       VMNET that servers are on                       |
| VMNET12ThinClients |  12   | ---  |       ---       |        ---         |                    VMNET that thin clients are on                     |
|   VLAN111Servers   |  ---  | 111  | 10.110.111.1/24 | 10.110.111.100-200 |                   VLAN used for VDI and RDS Servers                   |
|    VLAN112NoInt    |  ---  | 112  | 10.110.112.1/24 | 10.110.112.100-200 | VLAN used for thin clients that **don't need** access to the internet |
|     VLAN113Int     |  ---  | 113  | 10.110.113.1/24 | 10.110.113.100-200 |  VLAN used for thin clients that **do need** access to the internet   |

#### Firewall Rules
##### LAN
| Status  | Direction | Protocol | Source  | Port | Destination | Port | Gateway | Schedule |            Description             |
| :-----: | :-------: | :------: | :-----: | :--: | :---------: | :--: | :-----: | :------: | :--------------------------------: |
| Enabled |    In     |  IPv4*   | LAN Net |  *   |      *      |  *   |    *    |    *     |   Default allow LAN to any rule    |
| Enabled |    In     |  IPv6*   | LAN Net |  *   |      *      |  *   |    *    |    *     | Default allow LAN IPv6 to any rule |
##### WAN
| Status  | Direction |   Protocol   |     Source      | Port | Destination |    Port     | Gateway | Schedule |   Description   |
| :-----: | :-------: | :----------: | :-------------: | :--: | :---------: | :---------: | :-----: | :------: | :-------------: |
| Enabled |    In     | IPv4 TCP/UDP | 10.100.80.16/29 |  *   | WAN Address | 443 (HTTPS) |    *    |    *     | Admin FW Access |
##### VLAN111Servers
| Status  | Direction | Protocol |      Source      | Port |    Destination     |     Port      | Gateway | Schedule |   Description    |
| :-----: | :-------: | :------: | :--------------: | :--: | :----------------: | :-----------: | :-----: | :------: | :--------------: |
| Enabled |    In     | IPv4 TCP | VLAN112NoInt Net |  *   | VLAN111Servers Net | 3389 (MS RDP) |    *    |    *     | VLAN112 In - RDP |
| Enabled |    In     | IPv4 TCP |  VLAN113Int Net  |  *   | VLAN111Servers Net | 3389 (MS RDP) |    *    |    *     | VLAN113 In - RDP |
##### VLAN112NoInt
| Status  | Direction | Protocol |       Source       | Port | Destination | Port | Gateway | Schedule |       Description       |
| :-----: | :-------: | :------: | :----------------: | :--: | :---------: | :--: | :-----: | :------: | :---------------------: |
| Enabled |    In     |  IPv4*   | VLAN111Servers Net |  *   |      *      |  *   |    *    |    *     | VLAN111Servers any - in |
##### VLAN113Int
| Status  | Direction | Protocol |       Source       | Port | Destination | Port | Gateway | Schedule |       Description       |
| :-----: | :-------: | :------: | :----------------: | :--: | :---------: | :--: | :-----: | :------: | :---------------------: |
| Enabled |    In     |  IPv4*   | VLAN111Servers Net |  *   |      *      |  *   |    *    |    *     | VLAN111Servers any - in |
