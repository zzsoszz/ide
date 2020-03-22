alias sss="ss-local -v  -c   /etc/shadowsocks/config.json"
alias cc="google-chrome --proxy-server=\"socks5://127.0.0.1:1080\" --user-data-dir=$HOME/chrome-withproxy &"
alias ff="firefox &"
alias fm="nautilus . &"
alias home="cd $HOME"
alias greph="grep -win -C 4 "
alias load="source $HOME/.bashrc"
alias df="df -h "
alias ll="ls -al"
alias time-date="date && cal"
alias findh="find . -name"
alias ccn="google-chrome --no-proxy-server --user-data-dir=$HOME/chrome-noproxy &"
alias gith='git add .; git commit -a -m "update"; git push origin master'
alias downloadalias="sudo wget  https://raw.githubusercontent.com/zzsoszz/ide/master/.bash_aliases -P $HOME/ -N "
alias vi-rc="vi $HOME/.bash_aliases"
alias netstath="netstat -aux"
alias ncl="nc -l -p 9000"
alias ncatl="ncat -v -l -p 9000 -m 40 -k -e /bin/bash"
alias ncle="nc -l -p 9000 -e /bin/bash"
alias ncc="nc -v 127.0.0.1 9000"
alias tcpl="tcpserver -v -RHlo 0 9000 /bin/bash"
alias iftop="sudo iftop -p -n -i "
alias server='echo "shasha@47.105.105.185:/home/shasha/downloads"'
##nc www.google.com 80  -x 127.0.0.1:1080
##[for upload]     scp downloads/QQ-20171129-x86_64.AppImage $(server)
##[for download]   scp $(server)/downloads/*.AppImage $HOME/downloads

downloadall(){
	cp -rf  /etc/apt/sources.list  /etc/apt/sources.list_bak &  cp ./sources.list /etc/apt/
	sudo apt update & apt upgrade 
	sudo apt -y curl netcat-traditional shadowsocks-libev net-tools lrzsz ucspi-tcp 
        sudo update-alternatives --config nc;
}

downloadjs(){
	sudo curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
	sudo apt-get install -y nodejs
	sudo npm install -y  yarn
	npm config set registry https://registry.npm.taobao.org
}

configvim(){
       sudo apt install neovim
       cp -rf  ./.config/nvim $HOME/.config 
       nvim +PlugInstall +qall
}


p(){
   echo '$1:'${1};
   echo '$2:'${2};
   echo '$@:'${@};
   echo '$#:'${#};


   fruit=(1 2 3 4 "555" "666" "777");
   echo '$fruit:'${fruit[@]};
}

createf(){
   echo file{1..4}{1..4}.txt |xargs -n 1  touch
}
