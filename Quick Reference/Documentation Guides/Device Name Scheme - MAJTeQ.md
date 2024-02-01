# Device Name Scheme - MAJTeQ  
## Project Name: UltraSol Energy Solutions Merger  
**Assigned Members:** Aidan Cadieux, Jamie Lewis, Matthew Telford, Quinn Parent, Taqi Zaidi    
**Date Last Modified:** February 1, 2024    
**Version:** 1.00

--- 
For the name scheme, the format will be the following:
**Location - Short Name - Number**
ex. `HQ-L3SW-01`
### Locations
The table below will be how the location name scheme will follow:

| Name | Purpose | Notes |
| ---- | ---- | ---- |
| **HQ** | Headquarters |  |
| HQI | Headquarters Secure WiFi | Only used on WAP and clients |
| HQG | Headquarters Guest WiFi | Only used on WAP and clients |
|  |  |  |
| **MP** | Manufacturing Plant |  |
| MPI | Manufacturing Plant Internal WiFi | Only used on WAP and clients |
| MPG | Manufacturing Plant Guest WiFi | Only used on WAP and clients |
| MPS | Manufacturing Plan Secure (OT) | Only used for OT users and devices |
|  |  |  |
| **OW** | Outbound Warehouse |  |
| OWI | Outbound Warehouse Internal WiFi | Only used on WAP and clients |
| OWG | Outbound Warehouse Guest WiFi | Only used on WAP and clients |
|  |  |  |
| **MW** | Materials Warehouse |  |
### Short Names
The short name that is used depends on if the name is being applied to a user device or an infrastructure device.<br>The table below will be the short name scheme for client devices:

| Name | Department |
| ---- | ---- |
| MAN | Management |
| ADM | Administration |
| HR | Human Resources |
| ENG | Engineering |
| FIN | Finance |
| SAL | Sales |
| OPE | Operations |
| IND | Industry |
| OT | Operational Technologies |
| VP | Voice Phones |
The next table will be the short name scheme for infrastructure devices:

| **Name** | Device |
| ---- | ---- |
| **L3SW** | Layer 3 Switch |
| **L2SW** | Layer 2 Switch |
| **RTR** | Router |
| **FW** | Firewall |
| **HV** | Hypervisor / Hyper V |
| **DC** | Domain Controller |
| **WAP** | Wireless Access Point |
| **WSUS** | Windows Server Update Service |
| **WDS** | Windows Deployment Services |
| **SRV** | Generic Server |
**A virtual device will have a V before the name.** (ex. `HQ-VFW-01`)
This is by no means a comprehensive list for names of client or infrastructure devices.<br>This list will be updated as definitions expand.
### Number
The number used will be a two digit number starting with 0 (or a higher number if there are tens of devices of the same type.)