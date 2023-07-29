#!/usr/bin/env bash
branch_complete(){
    if [[ "${COMP_WORDS[1]}" == "checkout" && "${#COMP_WORDS[@]}" == "2" ]]; then
    COMPREPLY=($(compgen -o nospace -W "$(git branch --sort=-committerdate)" ))
    fi
}
complete -r default -o nospace -F branch_complete git
