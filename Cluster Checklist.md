# Checklist to Cluster
https://www.cryingcloud.com/blog/2021/6/18/deploying-azure-stack-hci-20h2-r630
- [x] Check RAID Controller
	- [x] HBA MODE
- [x] Installed Win Server 22 Datacenter
- [x] Installed Clustering Services
- [ ] Make the 10G Cluster Network
- [ ] Make the storage Network (Another line to each node-eth3)
- [ ] <span style="color: black; background-color: yellow;"> TO DO: Re-configure g1/0/23-24 to TRUNK?? VLAN15?? </span>
- [ ] DC2 (backup) on a WS
	- [ ] make an iSCSI Quorum on DC2
- [ ] JOIN HV's to domain
	- [ ]  Install WAC
- [ ] CLUSTER
	- [ ] https://learn.microsoft.com/en-us/azure-stack/hci/deploy/create-cluster?tabs=use-network-atc-to-deploy-and-manage-networking-recommended#start-the-create-cluster-wizard
- [ ] Powershell to fix drives
```
(get-cluster).S2DBusTypes="0x100"
```
- [ ] Then Run HCI
	- [ ] Enable-ClusterStorageSpacesDirect –CimSession HCICLUSTER


## Changes

- made vlan 15 - ServerManagement
	- The servers will need to vlan tag 15??
- Vlan10 - AD service (Servers)