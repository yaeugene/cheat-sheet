### Random wait
# MAXWAIT is the maximum desired delay in seconds
sleep $((RANDOM % MAXWAIT))

### Search in bash history
# For convenient search in bash history you can use combinatins "Ctrl + R" (forward) or "Ctrl + Shift + R" (backward).
# Or you can add next code to ~/.bashrc :

# History search with Up/Down keys.
if [[ $- == *i* ]]; then
    bind '"\eOA": history-search-backward'
    bind '"\e[A": history-search-backward'
    bind '"\eOB": history-search-forward'
    bind '"\e[B": history-search-forward'
fi

# After that reload bash or exec:
. ~/.bashrc

# After this changes you can simply press up/down and select needed command or
# you can enter firs symbols of command in history and after that when press up/down you can select only from commands with same beginning

### Exec command as root with sudo
# For exec command chain as root with sudo you can use: 
sudo bash -c 'cat /dev/null > /var/spool/mail/root'
