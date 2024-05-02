# dotfiles
mateisr.com

**1. Neovim Configuration**

This repository contains my personal Neovim configuration, among other dotfiles.

### Usage

1. Clone this repository to your local machine:

    ```bash
    git clone https://github.com/MateiSR/neovim-config.git
    ```

2. Install Neovim:

    Follow the installation instructions provided on the [Neovim website](https://neovim.io/).

3. Install ripgrep (and clang):

    Ensure that you have ripgrep installed on your system. You can install it via your package manager or download it from the [ripgrep GitHub repository](https://github.com/BurntSushi/ripgrep).

    If using clang-format, make sure to install clang using your sistem's package manager (e.g. `pacman -S clang`).

    Also install 'xclip' for clipboard support (e.g. `pacman -S xclip`).

4. Install a Nerd Font:

    I recommend using a font from [Nerd Fonts](https://www.nerdfonts.com/) to ensure proper display of icons and glyphs in Neovim. Download and install your preferred Nerd Font. *Do this if you have trouble with icons in neo-tree*.

5. Set up Neovim:

    Backup your `~/.config/nvim` folder, then replace it with the `.config/nvim` folder inside this repo. 
    
    **Important: if using none-ls, make sure to install all the formatters & linters specified in `.config/nvim/none-ls.lua` from `:Mason`**
    
    **If using `lazygit.nvim`, make sure to install `lazygit` using your sistem's package manager (e.g. `pacman -S lazygit`)**

    **If using `nvim-dap-ui`, make sure to install `codelldb` and other DAPs specified in the `.config/nvim/lua/plugins/dap.lua` file** 

6. Launch Neovim:

    Open Neovim. It will automatically install any missing plugins and apply the configuration.
    
Feel free to explore the configuration files to understand how different plugins are configured and integrated.

**2. Fish Configuration**

1. Install ohmyfish:
    
    Check [GitHub](https://github.com/oh-my-fish/oh-my-fish) for instructions.
2. Set the theme using `fish_config`

    Install and set the [Catppuccin Machiatto Theme](https://github.com/catppuccin/fish). Follow the instructions given in their official repo.

3. (Optional) Copy config files

    Backup your `~/.config/fish` folder, then replace it with the `./config/fish` folder inside this repo.

**3. Tmux Configuration**

1. Install tmux (e.g. `pacman -S tmux`)

2. Install TPM (Tmux Plugin Manager)

Follow the instructions at [TPM GitHub Page](https://github.com/tmux-plugins/tpm)

3. Copy `.tmux.conf` to `~/`, and then fetch the plugins: `~/.tmux/plugins/tpm/bin/install_plugins`
