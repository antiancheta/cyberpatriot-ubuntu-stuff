#!/usr/bin
apt-get update # Okay so we are going to update the system because why not
apt-get upgrade # Upgrade our files
apt-get install gufw # Go get gufw
apt-get install bum # Go get bum
apt-get install libpam-cracklib # Install and setup pam-cracklib for authentication method shit
apt-get install zenmap # Install zenmap for port scanning
apt-get install chkrootkit # Install chkrootkit
apt-get install rkhunter # Install rkhunter
apt-get install clamtk # Install clamav gtk edition nibba
apt-get install auditd # Install auditd

# Friggin yeehaw now we are going to run a bunch of stuff so pay attention you homozygous freak
ufw enable # We enable ufw, turns on the firewall
rkhunter --propupd # Set up rkhunter
rkhunter --checkall # Run rkhunter
chkrootkit # Run chkrootkit
auditctl -e 1 # Run auditd, we can edit what we need to in /etc/audit/auditd.conf
 
# Now pay attention to my directions

bum # Look at the services and see what's running, stop what doesn't need to run

zenmap # Run a scan on "localhost" and see what ports are open and close them if they aren't necessary

clamtk # Run an AV scan on the system to make sure that we don't have malware

gufw # Check to see if we accept inbound connections and refuse all except for required connections, like Samba or SSH

echo DONE  
