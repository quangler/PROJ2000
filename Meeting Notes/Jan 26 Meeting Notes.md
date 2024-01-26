We had the meeting with Jared from FortiNet today. We discussed firewalls and network topology.

- HA means each firewall needs to have a port to the same device (F1-P1 and F2-P1 both go to server) - we will most likely use HA, unless we have no ports.

- breaking things up by firewall for each subnet is not a great idea, we should stick with VLANs.

- tunnel mode for APs - makes everyone (internal and guest) go through the fortigate while still having the APs at a L3 switch

- we are only going to create 2 sites. HQ and Plant.