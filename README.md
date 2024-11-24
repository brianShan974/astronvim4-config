# My AstroNvim Config Based on AstroNvim Template

**NOTE:** This is for AstroNvim v4+

My config based on the template for getting started with [AstroNvim](https://github.com/AstroNvim/AstroNvim)

## 🛠️ Installation

#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

#### Clone the repository

```shell
git clone https://github.com/brianShan974/astronvim4-config.git ~/.config/nvim
```

#### Start Neovim

```shell
nvim
```

## Something Else to Have Done

### On M3 Macbook Air

#### `markdown-preview.nvim` doesn't work out of the box

The solution is to `cd` into `~/.local/share/nvim/lazy/markdown-preview.nvim/` and run `npm install`.
