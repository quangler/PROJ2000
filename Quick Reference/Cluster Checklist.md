# Checklist to Cluster
https://www.cryingcloud.com/blog/2021/6/18/deploying-azure-stack-hci-20h2-r630
- [x] Check RAID Controller
	- [x] HBA MODE
- [x] Installed Win Server 22 Datacenter
- [x] Installed Clustering Services
- [x] Make the 10G Cluster Network
- [x] Make the storage Network (Another line to each node-eth3)
- [x] <span style="color: black; background-color: yellow;"> TO DO: Re-configure g1/0/23-24 to TRUNK?? VLAN15?? </span>
- [x] DC2 (backup) on a WS
	- [x] make an iSCSI Quorum on DC2
- [x] JOIN HV's to domain
	- [ ]  Install WAC
- [x] CLUSTER
	- [x] https://learn.microsoft.com/en-us/azure-stack/hci/deploy/create-cluster?tabs=use-network-atc-to-deploy-and-manage-networking-recommended#start-the-create-cluster-wizard
- [x] Powershell to fix drives
```
(get-cluster).S2DBusTypes="0x100"
```
- [x] Then Run HCI
	- [x] Enable-ClusterStorageSpacesDirect –CimSession HCICLUSTER


## Changes

- made vlan 15 - ServerManagement
	- The servers will need to vlan tag 15??
- Vlan10 - AD service (Servers)