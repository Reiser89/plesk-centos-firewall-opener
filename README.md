# Plesk 17.5+ firewall opener for Centos/RHEL OS
This script helps you to open all necessary ports to run Plesk 17.5+ on your Centos/RHEL server.

# Description
Since I ran many Plesk test installations on my vultr servers, I created a script which fast opens all ports required by Plesk and its services on the strict Centos firewall.

If you have troubles reaching services or the Plesk-Webinterface after installation on Centos, try to run this script.

I recommend to do this after the Plesk installation.

# HowTo run
1. Login as **root**.
2. Copy the script-file on your Centos/RHEL machine.
3. Set the run-permissions:
    - ```chmod +x fwplesk.sh```
4. Run it:
    - ```./fwplesk.sh*```

# Which ports will be opened?
All listened Linux ports, recommended by plesk:

https://support.plesk.com/hc/en-us/articles/213932745-Which-Ports-Need-To-Be-Opened-for-all-Plesk-Services-to-Work-with-a-Firewall-

Except:
* FTP passive ports
* 10155 (for a custom Plesk Migrator service performing miscellaneous)

# How can I open FTP passive ports?
This script does not support passive ports right now.

Read the Plesk article here:

https://support.plesk.com/hc/en-us/articles/213902285
