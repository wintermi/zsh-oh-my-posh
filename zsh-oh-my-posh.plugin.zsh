#!/usr/bin/env zsh
# shellcheck disable=SC1090

# Exit if the 'oh-my-posh' command can not be found
if ! (( $+commands[oh-my-posh] )); then
    echo "WARNING: 'oh-my-posh' command not found"
    return
fi

# Init cache directory for `oh-my-posh` command
local INIT_CACHE_DIR="${0:A:h}/init"

# Only regenerate init script if older than 7 days, or does not exist
if [[ ! -f "$INIT_CACHE_DIR/_ohmyposh"  ||  ! $(find "$INIT_CACHE_DIR/_ohmyposh" -newermt "7 days ago" -print) ]]; then
    oh-my-posh init zsh --print >| "$INIT_CACHE_DIR/_ohmyposh"
fi

# Initialise the Oh My Posh Prompt
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
    source "$INIT_CACHE_DIR/_ohmyposh"
fi