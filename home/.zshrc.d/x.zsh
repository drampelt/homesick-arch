# alias xclip="xclip -selection c"
# alias pbcopy="tee >(\\xclip) >(xclip)"
alias pbcopy="xsel --clipboard --input"
alias pbpaste="xsel --clipboard --output"
alias volup="amixer -q set Master 2dB+ unmute && pkill -RTMIN+10 i3blocks"
alias voldown="amixer -q set Master 2dB- unmute && pkill -RTMIN+10 i3blocks"
export N_PREFIX=$HOME
