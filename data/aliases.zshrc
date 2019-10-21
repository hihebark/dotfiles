##### utils
alias lsla='ls -lah'
alias wtfismyip='curl -s wtfismyip.com/json'
alias getprocess='ps aux | grep $1'
alias startapache='sudo /opt/lampp/xampp startapache && sudo /opt/lampp/xampp startmysql'
alias stopapache='sudo /opt/lampp/xampp stop'
alias wgetc='wget -c $1'
alias ytdlmp3='youtube-dl --extract-audio --audio-format mp3 $1'
alias aptgrad='sudo apt update && sudo apt upgrade'
alias tmux='TERM=screen-256color-bce tmux'
alias poopush='git add . && git commit -m "small fixes or logging..." && git push'
alias scanoid='ip neigh show nud reachable'
alias exgrep='grep --exclude-dir={node_modules,dist}'

##### Tool
alias hashcat='~/Tool/hashcat/hashcat'
alias jadx='~/Tool/jadx/build/jadx/bin/jadx-gui ~/Tool/jadx/build/jadx/lib/jadx-core-*.jar'
alias searchsploit='~/Tool/exploit-database/searchsploit'
alias johntr='~/Tool/john-1.8.0/run/john'
alias sqlmap='python ~/Tool/sqlmap/sqlmap.py'
alias nikto='perl ~/Tool/nikto/program/nikto.pl'
alias dirsearch='python3 ~/Tool/dirsearch/dirsearch.py'
alias beef='cd ~/Tool/beef && ./beef'
