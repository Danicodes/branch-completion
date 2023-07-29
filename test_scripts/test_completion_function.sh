#!/usr/bin/env bash
myfunc() {
    echo "Dothis found"
    echo "Number of args total ${#COMP_WORDS[@]}"
    if [[ "${COMP_WORDS[1]}" == "-v" ]]; then
        echo "V option found"
    fi
}

complete -F myfunc dothis
