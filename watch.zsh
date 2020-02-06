#!/bin/bash

set -eu

# Turn off useless warning.
export RUBYOPT=-W0

if ! hash entr; then
  {
    echo "You need to install 'entr'."
    echo "    brew install entr"
  } 1>&2
fi

ls -1 *.rb | entr -c rake

# EOF
