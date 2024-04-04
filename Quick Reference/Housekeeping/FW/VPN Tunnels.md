## MP-FW-01
### HQ-Mg to MP-Mg Tunnel (MAN_VDOM)
![[Pasted image 20240404135416.png]]
![[Pasted image 20240404135543.png]]
Certificates were created using HQ-PKI-01 server.
![[Pasted image 20240404140400.png]]
![[Pasted image 20240404140408.png]]

###  HQ to MP Tunnel (MP_VDOM)
![[Pasted image 20240404140505.png]]
![[Pasted image 20240404140838.png]]
There is no subject, on the other side there is and it works. I'm not sure why this happens. With a subject the `Peer ID` disappears and the tunnel is down on this side, but up on the other.

![[Pasted image 20240404140953.png]]
![[Pasted image 20240404141005.png]]

Commands for modifying the peer to peer relationship for FortiGate:
https://community.fortinet.com/t5/FortiGate/Technical-Tip-IPsec-Tunnel-with-certificate-authentication-fails/ta-p/253151