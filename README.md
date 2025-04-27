# New Laptop

I just got a new laptop setup. This is what I did.

```bash
git clone git@github.com:lance-veup/laptop ~/dotfiles
cd ~/dotfiles
```

## Install Dev Tools

I use a few dev tools:

```bash
# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Deno
curl -fsSL https://deno.land/install.sh | sh

# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

# Bun
curl -fsSL https://bun.sh/install | bash
```

## Install Homebrew

Brew will manage most of the programs I use. Install it like this:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

It's installed but your shell doesn't know how to run it until you update your terminal's `$PATH` variable. 

## Install zshrc

New MacOS computers use zshell by default. This is a simple config I like.

```bash
cp -i zshrc ~/.zshrc
```

Open a new terminal session and the config should be loaded (your prompt should have colors).

## Brew Bundle

I am using Homebrew as much as possible. Right now it's installing Ghostty, Bitwarden, Podman, VSCode, Zoom, Rectangle, Slack, UV. See the list in [Brewfile](./Brewfile).

```bash
brew bundle # /opt/homebrew/bin/brew
```

### Optional: Horse Browser

I like this browser, it's great for organization: https://gethorse.com
