set fish_greeting
if status is-interactive
    # Commands to run in interactive sessions can go here
end

neofetch

starship init fish | source

alias vim "nvim"
