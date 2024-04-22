### Section 1 - 0 seconds
no one cares
title page

### Section 2
introductions
- about us - person and role
	- matt - network architect
	- aidan - server / storage administrator
	- jamie - server and services
	- taqi  - cloud, user experience, design
	- quinn - security architect 
### Section 3
planning - documentation - taqi
- papers and whiteboarding, iteration of diagrams - hard to find what is happening at start (in over our heads!)
- github & markdown - good looking and helpful documentation - team environment - acts as knowledge base, available anywhere (github, show website?)
- obsidian cutsheet - diagram on what we have physically | maintaining
- DIAGRAM - we figured it out :) | diagram is nice, but you need to configure things too
### Section 4 
network explanation - matt
 - Collapsed core
		 - redun
		 - no fails
 - east-west firewalls
- break into HA / VDOMs - transition into quinn firewall

### Section 5 
firewall - quinn
- firewall had been rebuilt - realizing the scope had expanded - can't plan for everything gotta be adaptable (LESSON LEARNED.)
-  - all good but what about physical access??!
- 802.1x - lots of problems, security
- RADIUS - clustered
- wifi - uses 802.1x, website 
- OT - virtual firewall for server protection | taqi did thin clients - they work. one set has internet, the other doesnt
- story time - sync thing is peer to peer (not good for enterprises) - being blocked! (and encrypted)

### Section 6
aidan[^buzzwords!] - interrupt quinn - wheres all the servers??? (where's aidan???)
- physical build - hyper V - why (uncertain futures, learning experience) / failover cluster
- HCI - storage pool, software RAID - RAID limitation: get an NVME card for OS - split brain, quorum offline D:
	- HyperV vSwitch
- backups - sending them off to the quinn server, sync thing, revision
- story time: we nuked a hypervisor - and it was fine (because we configured it good the first time)

### Section 7
services, migration - jamie 
- migration up - powershell is your friend - testing environment - made sure we had all the changes
- file servers, gpos, permissions, files synced to the cloud- azure AD sync installed on both DCs
- BYOD - security concerns, conditional access - web access only, disable download (work profiles)
- RMM - backend automation of servers / clients (updates, software), sitewide management, MFA for sign-in

### Section 8 
taqi - network monitoring
-  mfa / azure / intranet / sharepoint / exchange
- Microsoft is going to kill WDS. We should have used Windows AutoPilot, but we didnt know / have time | new device: WDS light touch deployment (gold image) auto attend file - RMM for department apps
- PRTG - initial setup, reliable - larger scale was too much - turned to a logging server (100 sensors) - SNMP, WMI, Syslog - ping sensors (used mostly for server monitoring)
- things grew bigger than we planned for - we pivoted, helped us keep on top of things
- NetCrunch - SFlow, NetFlow, SNMP- setup baselining with netcrunch - FULL MAIL! (used mostly for network monitoring)


### Section 9 - makin money B^)
- how do we make money?? - tickets! we used emails!
matt - ticketing system (hosted on the cloud so it'll never go down!)
- story time of how email integration was a pain in the ass
- what if no internet? high priority clients??
aidan - teams, phones! 

### Section 10 - CONCLUSION
thank you , questions ?


[^buzzwords!]: (for aidan): **cluster shared volume** (on HCI, lets us have failover), **guest clustering** (not implemented) - should have implemented this (ran out of time),  forced into **mirror configuration** because we only have 2 nodes