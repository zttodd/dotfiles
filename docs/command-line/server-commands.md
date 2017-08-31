# Server Commands  

**Get current time**  
`date +%H:%M:%S`  

**Edit crontab file**  
`crontab -e`  

**System uptime**  
`uptime -p`

## apache  

**check apache status**  
`sudo service apache2 status`  

**check access logs**  
`su -c "less /var/log/apache2/access.log"`  

**check error logs**  
`su -c "less /var/log/apache2/error.log"`  

---

## files and directories  

**show estimated size of directories**  
`sudo du --max-depth=1 -h`  

---

## processes  

**show all processes and their statuses**  
`ps aux`  

---

## security  

**check ports**  
`sudo netstat -plnt`  

### fail2ban  

**view client status, see activated jails**  
`sudo fail2ban-client status`  

**view ban notices**  
`sudo cat /var/log/fail2ban.log | grep NOTICE | less`  

**view invalid user login attempts**  
`sudo less /var/log/auth.log | grep Invalid`  

**view sshd jail bans and failed login attempts**  
`sudo fail2ban-client status sshd`  

---

## system info  

**system information**  
`lsb_release -a`  

### unix name  

**all**  
`uname -a`  

**kernel release**  
`uname -r`  

**hardware platform**  
`uname -i`  

---

## updating/upgrading  

**show upgradable packages**  
`sudo apt list --upgradable`  

**view log for unattended upgrades**  
`sudo less /var/log/unattended-upgrades/unattended-upgrades-dpkg.log`  

**check if reboot is required**  
`ls /var/run/restart-required/`  

---

## users  

### logging in  

**who is currently logged in**  
`who`

**view most recent login for each user on system**  
`lastlog`  

**view list of every user who has logged into the system**  
`last`  

**read btmp file (bad login attempts)**  
`sudo lastb`  

**read login records**  
`sudo last -f "/var/log/wtmp"`  

### groups  

**see what groups the current user is in**  
`groups`  