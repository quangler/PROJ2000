# Deployment Services Information
Information regarding the deployment environment (WDS / MDT + iVentoy)

- HQ-DS-01 hosted on HQ-HV-02
    - IP Address: 10.100.10.150
- WDS installed as a role
    - MDT also installed along with the Windows ADK
- Gold Client
  - Windows 10 Pro
  - autoattend.xml file to automate OOBE
      - uninstalls lots of stock UWP applications
  - Ninite for installing basic extra apps
  - Teams for Work
  - possibly auto-domain join with powershell?
  - 