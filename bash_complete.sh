#!/usr/bin/env bash
BRANCH_COMPLETE=($(git branch --sort=-committerdate |\
                    head -n 20 ))
branch_complete(){
    searchW=${COMP_WORDS[1]}
    COMPREPLY=COMPGEN -W "${BRANCH_COMPLETE[@]}" "${searchW}"

}
for ((i=0; i<${#BRANCH_COMPLETE[@]};i++)); do
    echo ${BRANCH_COMPLETE[i]}
done
#complete -o default -W "${BRANCH_COMPLETE[*]}" git checkout 
