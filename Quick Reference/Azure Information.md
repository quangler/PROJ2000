# Azure Information
Info regarding the Azure Active Directory setup

## Pre-Deployment Notes

### M365 Account
- make a new email account, possibly with the @team5.ca domain?
  - this could cause issues as it forwards email rather than being it's own email service (could be blocked by Microsoft)
  - possibly just make a new Outlook account to avoid any issues
- asked Barett if in use phone number and credit card info can be used for making a new trial without affecting COMP2100 lab environments
  - no response yet...
  - holding off on deployment until this is figured out
  - also authenticator stuff? use Google authenticator I assume?

### Azure AD / Entra Connect
- deploy on one of the DCs, possibly HQ-DC-02? will ask Jamie first
- ensure that OUs and accounts are being properly synced

### Custom Domain
- ask Quinn for login to the domain provider
- modify DNS settings to change domain from .onmicrosoft.com to team5.ca

### Exchange
- wait for full Exchange lab coverage in COMP2100
- begin implementation upon completion of the lab, or even at the same time as the lab

### Best Practices
- don't forget the break glass account in Entra
- DMARC verification records must be set up for full Exchange functionality
-

## Deployment Notes
- **New Outlook Account**
  - Name: proj2000team5@outlook.com
  - Password: M@jteq5#Azure!
- **M365 Account**
  - Name: TeamFive@majteq5.onmicrosoft.com
  - Password: M@jteq5#Azure!
- **Team5.ca Domain**
  - DNS hosted through CloudFlare
  - TXT records added for verification
  - DMARC records also added

## Post Deployment