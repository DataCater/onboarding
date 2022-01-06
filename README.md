# Overview

Welcome to DataCater!

This repository contains quick and easy setup instructions to get you started quickly.

After you've followed these instructions you have a working development environment with the most important tools at hand.

For example:

- Docker
- Java SDKs
- a cosy CLI environment based on ZSH
- Vim editor configuration based on SpaceVim (optional)

Most of the configuration settings are optional but recommended. Feedback is welcome!

## Requirements

- These setup instructions are meant to run on a brand new machine and is optimised for MacBooks.
- If you've already set up your machine, please double check these instructions and make sure that you really want these settings.
- Tested on macOS 12.1

## Installation

- Clone the `dotfiles` repo to your HOME folder:
```
git clone https://github.com/DataCater/onboarding.git $HOME/dotfiles
```
- Install [Homebrew](https://docs.brew.sh/Installation):
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
- Install required tools:
```
brew bundle --no-lock --file $HOME/dotfiles/Brewfile
```
- Set `zsh` as your default login shell:
```
sudo chsh -s "$(command -v zsh)" "${USER}"
```
- Install `oh-my-zsh`:
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
- Install SDKman:
```
curl -s "https://get.sdkman.io" | bash
```
- Install SpaceVim:
```
curl -sLf https://spacevim.org/install.sh | bash
```
- Link the symlink configuration file:
```
ln -s $HOME/dotfiles/rcrc $HOME/.rcrc
```
- Verify the symlinks with this command: `lsrc`

This command lists all symlinks that are going to be created so you can review the setup before you apply the settings in the next step.

Once you're happy with the result go ahead and create the symlinks to each dotfile:
```
rcup -v
```
You can safely run this command multiple times to update the symlinks e.g. if you add more dotfiles to the `dotfiles` folder later.

- After that open a new shell and enjoy! Feel free to customise your environment further to get the most comfortable environment for you.

## Manual Steps / Recommendations

- Set Docker Desktop RAM to 8GB+

## What's in it?

### [git](http://git-scm.com/) configuration and commit templates

* Best practise commit message in `~/.gitmessage`

To use it, add this to your local `~/.gitconfig` file:
```
[commit]
  template = ~/.gitmessage
```

#### [vim](http://www.vim.org/) configuration:

* The vim config is based on [SpaceVim](https://spacevim.org/).

## FAQ

### How do I remove the unessecary apps in the default dock?

To cleanup the dock I use the commandline tool `dockutil`:

    brew install dockutil
    dockutil --remove all

This will remove all the default apps in the dock. Now I can add apps that I find useful.

I personally store only a handful apps in the dock, because I use the search feature to open apps either with the built in Spotlight or 3rd party apps like [Alfred](https://www.alfredapp.com/).

### How do I install apps on macOS?

This command installs the common tools I use on a regular basis:

    brew bundle --no-lock --file=~/dotfiles/tag-darwin/homebrew/Brewfile

You can omit the `--no-lock` if the ENV variable `HOMEBREW_BUNDLE_NO_LOCK` is set.

### How do I use a Node Package manager?

The git setup of NVM provides the most straightforward solution in my opinion.

It is described here: https://github.com/nvm-sh/nvm#git-install

After that install the node version(s) you desire: `nvm install 12`

### How do I setup the Java environment?

Use SDKMan and follow the installation step:

    curl -s "https://get.sdkman.io" | bash

Then head over to their wiki to read up on the installation steps for each Java tool: https://sdkman.io/usage

When you follow the installation steps here, the most common SDKs are already installed through `hooks/post-up/install-java-sdk.sh`.

### How do I contribute?

Are you missing a specific too? Got an interesting setting that you miss?

[Create a PR](https://github.com/DataCater/onboarding/compare) and start the discussion!

The goal of this repo is to make development at DataCater fun and productive as quickly as possible. 🚀
