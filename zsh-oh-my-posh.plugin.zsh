#!/usr/bin/env zsh
# shellcheck disable=SC1090

# Exit if the 'oh-my-posh' command can not be found
if ! (( $+commands[oh-my-posh] )); then
    echo "WARNING: 'oh-my-posh' command not found"
    return
fi

# If the 'POSH_THEME' environment variable is not populated then set
# the default theme configuration to the one provided with this plugin
if [[ -z "$POSH_THEME" ]]; then
    export POSH_THEME="${0:A:h}/theme/ohmyposh.toml"
fi

# Initialise the Oh My Posh Prompt
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh)"
fi
