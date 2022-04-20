#/usr/bin/env bash

_options(){
 options=$(docker ps --format {{.Names}})
 COMPREPLY=($(compgen -W "$options" "${COMP_WORDS[1]}"))
}

complete -F _options dexec
