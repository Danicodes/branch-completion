#!/usr/bin/env bash
branch_complete(){
    if [[ "${COMP_WORDS[1]}" == "checkout" && "${#COMP_WORDS[@]}" == "2" ]]; then
    #BRANCH_COMPLETE=($(git branch --sort=-committerdate |\
    #                head -n 20 ))
    COMPREPLY=($(compgen -o nospace -W "$(git branch --sort=-committerdate)" ))

    #COMPREPLY=($(compgen -W "${BRANCH_COMPLETE[@]}" -- "{COMP_WORDS[1]}"))
    fi
}
complete -r default -o nospace -F branch_complete git
