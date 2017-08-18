# Server Commands  

**Get current time**  
`date +%H:%M:%S`  

## apache  

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

**client status, see activated jails**  
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

**show packages ready for upgrade**  
`sudo apt upgrade --dry-run`  

**view log for unattended upgrades**  
`sudo less /var/log/unattended-upgrades/unattended-upgrades-dpkg.log`  

---

## users  

**view most recent login for each user on system**  
`lastlog`  

**read btmp file (bad login attempts)**  
`sudo lastb`  

**read login records**  
`sudo last -f "/var/log/wtmp"`  