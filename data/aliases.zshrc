##### utils
alias lsla='ls -lah'
alias wtfismyip='curl -s wtfismyip.com/json'
alias getprocess='ps aux | grep -v grep | grep $1'
alias startapache='sudo /opt/lampp/xampp startapache && sudo /opt/lampp/xampp startmysql'
alias stopapache='sudo /opt/lampp/xampp stop'
alias wgetc='wget -c $1'
alias ytdlmp3='youtube-dl --extract-audio --audio-format mp3 $1'
alias aptgrad='sudo apt update && sudo apt upgrade && sudo apt --purge autoremove && sudo apt clean'
alias tmux='TERM=screen-256color-bce tmux'
alias poopush='git commit -m "Small fix i did not bother commenting..."'
alias scanoid='ip neigh | grep -v "FAILED"'
alias exgrep='grep --exclude-dir={node_modules,dist,vendor,storage}'
alias endbep='beep -f 1000 -n -f 2000 -n -f 1500 -n -f 1000'
alias git-tree-line='git log --graph --decorate --oneline'
alias souris='sudo rmmod i2c_hid && sudo modprobe i2c_hid'
alias zabf='sudo sync && echo 3 | sudo tee /proc/sys/vm/drop_caches'
alias gvimdiff='git difftool --tool=vimdiff'
alias prune_remote='git branch --merged >/tmp/merged-branches && vi /tmp/merged-branches && xargs git branch -d </tmp/merged-branches'
alias pvm='sudo update-alternatives --config php'
alias xcp='xclip -sel clip'
alias sail="[ -f sail ] && sh sail || bash vendor/bin/sail"
alias docker_stop_all="docker ps -aq | xargs docker stop"
alias exrnis="grep --exclude-dir={node_modules,dist,vendor,storage} -rnis"

##### Tool
# alias jadx='~/tools/jadx/build/jadx/bin/jadx-gui ~/tools/jadx/build/jadx/lib/jadx-core-*.jar'
alias johntr='~/tools/john-1.8.0/run/john'
alias sqlmap='python ~/tools/sqlmap-dev/sqlmap.py'
alias nikto='perl ~/tools/nikto/program/nikto.pl'
alias beef='cd ~/tools/beef && ./beef'
alias dirsearch='python3 ~/tools/dirsearch/dirsearch.py'
alias gorss='/home/virtualstruct/tools/gorss/gorss'
alias ducks='du -cks -- * | sort -rn | head'
