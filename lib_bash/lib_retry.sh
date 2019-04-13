#!/bin/bash
my_dir="$(dirname "${0}")"
source ${my_dir}/lib_color.sh

function fail {
  clr_bold clr_red "${1}" >&2
  exit 1
}


function retry {
  local n=1
  local max=5
  local delay=5
  while true; do
	my_command="${@}"
    "$@" && break || {
      if [[ $n -lt $max ]]; then
        ((n++))
        clr_bold clr_red "Command \"${my_command}\" failed. Attempt ${n}/${max}:"
        sleep $delay;
      else
        fail "The command \"${my_command}\" has failed after ${n} attempts."
      fi
    }
  done
}


## make it possible to call functions without source include
# Check if the function exists (bash specific)
if [[ ! -z "$1" ]]
    then
        if declare -f "${1}" > /dev/null
        then
          # call arguments verbatim
          "$@"
        else
          # Show a helpful error
          function_name="${1}"
          library_name="${0}"
          fail "\"${function_name}\" is not a known function name of \"${library_name}\""
        fi
	fi