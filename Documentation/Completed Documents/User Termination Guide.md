# User Termination Guide – MAJTeQ

**Date Last Modified:** April 10, 2024  
**Version:** 1.00  

---
## Task 1 – Secure User Account
1. **If** the User Account is **Expired**
- When the **User** already left the company: change the **password** – **GO TO** Step 2
- Situation where the **user** is **still employed**:
	- **Set** the account to **expire** on end of last day as stated in ticket.
	- With effective termination, sign-out the User from all **Intranet** & **Internet** sign-in activities. (M365 Portal, Any Intranet Sites).
2. **Remove** the **AD Group** Memberships
## Task 2 - Intranet Account Removal
- Update the **User’s Intranet** “Termination Date”
- **Disable** or **Remove** account for all **intranet** and other **web** accounts as necessary.  
## Task 3 – Active Directory Work
- Move the **User’s** account to the **User_Decommissioning** OU
## Task 4 – Local Technician Workstation
- Use the `ADSIEdit` power shell **CMD** to determine what **delegation** rights the User has access to.
- Get proper **signed-off** from HR about **Transferring/Delegating** the User’s mailbox to proper **chain of command** I.E (department Manager) if necessary.
- **Log** in as the **user** and **remove** all Delegation(s) on their **mailbox**
## **Task 5 –  Cleanup user Data:**
- **Archive** or **Rename** the User’s **Home Drive Contents** (Desktop, Documents, Pictures) on the **Archive Server**/**Folder Redirection** location.
- **After** 90 Days **Delete** the User **Home Drive**
- **Remove** the **User’s profile** from all **PC’s** in the office (This can be done during schedule maintenance).  
## **Task 6 – Active Directory Follow-up Work**
- **After** 180 Days **Delete** the User **mailbox** using “**Exchange Tasks**”
- **After** 180 Days **Delete** the User **account** in **Active Directory**
This completes the decommissioning user process.

### **Additional tasks where requested**
In situations where the **User** account needs **emails** to be **passed** to a **different employee** to be handle; **clients**, **accounts**, and so forth are being turned over, **the following** should be done:  
- **Acquire** authority at the line **manager/director** level or discipline to filter and **redirect** **incoming emails** in a regulated manner.
- **Configure** the **discipline manager** for **redirection**.
- **Configure** an **auto responder** with a **standard form akin** to any **received emails**.  
  
**NOTE: This whole process could lasts between 90-180 days after which the whole shebang is pulled down and the user decommissioning process proceeds, where the user is wipe from the entire system.**