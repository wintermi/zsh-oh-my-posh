# zsh-oh-my-posh

A zsh plugin to manage the Oh My Posh prompt theme engine, along with providing a default powerline like theme.

## Install

Using the [:zap: Zap](https://www.zapzsh.org/) minimal zsh plugin manager, add the following to your `.zshrc`

```sh
# Install plugin
plug "wintermi/zsh-oh-my-posh"
```

## Prerequisite Checks

A check will be performed to verify that `oh-my-posh` has been installed:

-   [`oh-my-posh`](https://ohmyposh.dev/) - A prompt theme engine for any shell.

## Configure a Custom Theme

This plugin installs its own powerline theme and will default to this unless you override via setting the `POSH_THEME` environment variable to the location of your custom Oh My Posh theme configuration file.

As shown in the below examples:

```sh
# Example override of the POSH_THEME environment variable
export POSH_THEME="$HOME/custom_config.toml"
plug "wintermi/zsh-oh-my-posh"
```

## License

The **zsh-oh-my-posh** plugin is released under the [Apache License 2.0](https://github.com/wintermi/zsh-oh-my-posh/blob/main/LICENSE) unless explicitly mentioned in the file header.
