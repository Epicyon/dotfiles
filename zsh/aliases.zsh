# My aliases
alias ss='./script/server'
alias ss1='./script/server -p 3001'
alias sc='./script/console'
alias sg='./script/generate'
alias restart='touch tmp/restart.txt'
alias ajaxrdoc="rdoc --fmt ajax --exclude '.*generator.*' --exclude '.*test.*' --exclude '.*spec.*'"
alias devlog='tail -200 -f log/development.log'
alias testlog='tail -200 -f log/test.log'
alias ff='open -a Firefox'
alias rebase='git fetch; git rebase origin/master'
alias extip='curl icanhazip.com'
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*|POST \/.*|PUT \/.*|DELETE \/.*\""

alias ls='ls -G'
alias ll='ls -hl'

alias gs='git status'
alias gfo='git fetch origin'
alias gpom='git pull origin master'
alias gprom='git pull --rebase origin master'
alias gpu='git push origin master'
alias gsh='git push origin'
alias gllr='git pull --rebase origin'

function gitdays {
  git log --author=Ken --reverse --since="$@ days ago" --pretty="format:%n%Cgreen%cd%n%n%s%n%b%n---------------------------------------------" 
}

# accepts a css file and compacts the delcarations to one line
function css_compact {
  cat $@ | css2sass | sass -t compact > $@
}

# hamlizes whatever is on the clipboard
function pbhaml {
  pbpaste | html2haml | pbcopy
}

function md {
  markdown.pl $@ > /tmp/generated_by_markdown.html; open /tmp/generated_by_markdown.html
}
