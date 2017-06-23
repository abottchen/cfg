#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

ssh() {
    if [ "$(ps -p $(ps -p $$ -o ppid=) -o comm=)" = "tmux" ]; then
        tmux rename-window "$(echo $* | cut -d " " -f 1)"
        command ssh "$@"
        tmux set-window-option automatic-rename "on" 1>/dev/null
    else
        command ssh "$@"
    fi
}

vsh() {
  if [ "$#" -ne 1 ]; then
    echo "ERROR: No machine name provided."
    return
  fi

  if [ -e .vagrant/machines/$1/ssh ]; then
    command $(cat .vagrant/machines/$1/ssh)
  else
    echo "ERROR: .vagrant/machines/$1/ssh not found."
  fi
}
