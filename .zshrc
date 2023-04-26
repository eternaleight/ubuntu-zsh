[[ -d ~/.rbenv  ]] && \
  export PATH=${HOME}/.rbenv/bin:${PATH} && \
  eval "$(rbenv init -)"
setopt hist_ignore_space

#　指定回数でログアウト Ctrl-d　3回でログアウト
export IGNOREEOF=2
setopt ignore_eof
function bash-ctrl-d() {
  if [[ $CURSOR == 0 && -z $BUFFER ]]
  then
    [[ -z $IGNOREEOF || $IGNOREEOF == 0 ]] && exit
    if [[ "$LASTWIDGET" == "bash-ctrl-d" ]]
    then
      (( --__BASH_IGNORE_EOF <= 0 )) && exit
    else
      (( __BASH_IGNORE_EOF = IGNOREEOF ))
    fi
  fi
}

zle -N bash-ctrl-d
bindkey "^d" bash-ctrl-d
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/src
export PS1="%~ $ "
alias chrome="open -a 'Google Chrome'"
alias g='cd ~/github'
alias u='cd ~/github/uniico'
alias b='cd ~/github/bakerypartner-admin'
alias h='cd ~/github/holo-app'
alias f='go fmt'
alias gf='gofmt'
alias gm='go run main.go'
alias gi='go mod init'
# alias gh='hub browse'
alias gch='git checkout'
alias ga='git add'
alias gc='git commit'
alias gu='git checkout'
alias gp='git push'
alias gd='git diff'
alias gs='git status'
alias gb='git branch'
alias gl='git log'
# git rebase --onto <変更後の派生元ブランチ> <今の派生元ブランチ> <作業ブランチ>
alias gr='git rebase'
# gb-delete (merge済みブランチの削除)
alias gb-delete="git branch --merged|egrep -v '\*|develop|main'|xargs git branch -d"
# gb-all-delete (リモートブランチに存在しないブランチの削除)
alias gb-all-delete="git fetch -p && git branch -vv | grep ': gone]' | awk '{print $1}' | xargs git branch -D"
alias gbs="git show-branch | grep '*' | grep -v '$(git rev-parse --abbrev-ref HEAD)' | head -1 | awk -F'[]~^[]' '{print $2}'"
alias gcp='git cherry-pick'
alias k='cd ~/github/knowledge-band-admin'
alias lama='lama-cleaner --model=lama --device=cpu --port=8080'
alias l13='open http://localhost:1337'
alias l3='open http://localhost:3000'
alias l31='open http://localhost:3001'
alias l32='open http://localhost:3002'
alias l5='open http://localhost:5000'
alias l51='open http://localhost:5001'
alias l8='open http://localhost:8000'
alias l81='open http://localhost:8001'
alias l80='open http://localhost:8080'
alias n='nvim'
alias ns='npm start'
alias nd='npm run dev'
alias nr='npx create-react-app --template typescript 00001 && cd 00001 && npm install -D tailwindcss@latest postcss@latest autoprefixer@latest && npx tailwindcss init -p'
alias nn='npx create-next-app -e https://github.com/eternaleight/initial-next --use-npm'
alias nt='npx create-next-app@latest my-app --ts --use-npm && cd my-app && npm install -D tailwindcss@latest postcss@latest autoprefixer@latest && npx tailwindcss init -p'
alias .nvim='cd ~/.config/nvim/'
alias nv='npm create vite'
alias nx='npx nuxt init'
alias pc='python pyScreenSaverPrevention/pyScreenSaverPrevention.py'
alias zh='n ~/.zshrc'
alias so='source ~/.zshrc'
alias sa='sass --watch style.scss:style.css'
alias st='sass --style expanded style.scss:style.css'
alias ts='tmux source-file ~/.tmux.conf'
alias vc='vue create init'
alias yr='yarn create react-app --template typescript'
alias yn='yarn create next-app -e with-tailwindcss'
alias yd='yarn dev'
alias ys='yarn start'
alias zb='open https://zenn.dev/dashboard/deploys'
alias gsl="git stash list"
alias gsp="git stash pop"
alias gsa="git stash apply"
alias gsu="git stash -u"
alias ..='cd ..'
alias ...='cd ../../'
alias linux='cd \\wsl$\Ubuntu'
alias gsb="git show-branch | grep '*' | grep -v "$(git rev-parse --abbrev-ref HEAD)" | head -1 | awk -F'[]~^[]' '{print $2}'"
alias tailwind="yarn add -D tailwindcss postcss autoprefixer"
alias tailwind-init="yarn tailwindcss init -p"
export PATH="/usr/local/sbin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=$HOME/.nodebrew/current/bin:$PATH
alias gh="~/bin/hub_browse.sh"
alias mnt="cd /mnt/c/Users/etern"
