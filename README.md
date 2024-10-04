# nvim/

<a href="https://dotfyle.com/zSnails/nvim"><img src="https://dotfyle.com/zSnails/nvim/badges/plugins?style=flat" /></a>
<a href="https://dotfyle.com/zSnails/nvim"><img src="https://dotfyle.com/zSnails/nvim/badges/leaderkey?style=flat" /></a>
<a href="https://dotfyle.com/zSnails/nvim"><img src="https://dotfyle.com/zSnails/nvim/badges/plugin-manager?style=flat" /></a>


## Install Instructions

 > Install requires Neovim 0.9+. Always review the code before installing a configuration.

Clone the repository and install the plugins:

```sh
git clone git@github.com:zSnails/nvim ~/.config/zSnails/nvim
NVIM_APPNAME=zSnails/nvim/ nvim --headless +"Lazy! sync" +qa
```

Open Neovim with this config:

```sh
NVIM_APPNAME=zSnails/nvim/ nvim
```

## Plugins

### colorscheme

+ [folke/tokyonight.nvim](https://dotfyle.com/plugins/folke/tokyonight.nvim)
+ [sainnhe/gruvbox-material](https://dotfyle.com/plugins/sainnhe/gruvbox-material)
+ [bkegley/gloombuddy](https://dotfyle.com/plugins/bkegley/gloombuddy)
+ [rebelot/kanagawa.nvim](https://dotfyle.com/plugins/rebelot/kanagawa.nvim)
### comment

+ [folke/todo-comments.nvim](https://dotfyle.com/plugins/folke/todo-comments.nvim)
### completion

+ [hrsh7th/nvim-cmp](https://dotfyle.com/plugins/hrsh7th/nvim-cmp)
### editing-support

+ [windwp/nvim-autopairs](https://dotfyle.com/plugins/windwp/nvim-autopairs)
### file-explorer

+ [X3eRo0/dired.nvim](https://dotfyle.com/plugins/X3eRo0/dired.nvim)
+ [nvim-tree/nvim-tree.lua](https://dotfyle.com/plugins/nvim-tree/nvim-tree.lua)
### fuzzy-finder

+ [nvim-telescope/telescope.nvim](https://dotfyle.com/plugins/nvim-telescope/telescope.nvim)
### git

+ [lewis6991/gitsigns.nvim](https://dotfyle.com/plugins/lewis6991/gitsigns.nvim)
### icon

+ [nvim-tree/nvim-web-devicons](https://dotfyle.com/plugins/nvim-tree/nvim-web-devicons)
### lsp

+ [mfussenegger/nvim-lint](https://dotfyle.com/plugins/mfussenegger/nvim-lint)
+ [neovim/nvim-lspconfig](https://dotfyle.com/plugins/neovim/nvim-lspconfig)
### media

+ [andweeb/presence.nvim](https://dotfyle.com/plugins/andweeb/presence.nvim)
### note-taking

+ [nvim-neorg/neorg](https://dotfyle.com/plugins/nvim-neorg/neorg)
### nvim-dev

+ [nvim-lua/plenary.nvim](https://dotfyle.com/plugins/nvim-lua/plenary.nvim)
+ [folke/neodev.nvim](https://dotfyle.com/plugins/folke/neodev.nvim)
+ [MunifTanjim/nui.nvim](https://dotfyle.com/plugins/MunifTanjim/nui.nvim)
### plugin-manager

+ [wbthomason/packer.nvim](https://dotfyle.com/plugins/wbthomason/packer.nvim)
+ [folke/lazy.nvim](https://dotfyle.com/plugins/folke/lazy.nvim)
### snippet

+ [L3MON4D3/LuaSnip](https://dotfyle.com/plugins/L3MON4D3/LuaSnip)
### statusline

+ [freddiehaddad/feline.nvim](https://dotfyle.com/plugins/freddiehaddad/feline.nvim)
### syntax

+ [nvim-treesitter/nvim-treesitter](https://dotfyle.com/plugins/nvim-treesitter/nvim-treesitter)
+ [nvim-treesitter/nvim-treesitter-textobjects](https://dotfyle.com/plugins/nvim-treesitter/nvim-treesitter-textobjects)
### tabline

+ [romgrk/barbar.nvim](https://dotfyle.com/plugins/romgrk/barbar.nvim)
## Language Servers

+ astro
+ html
+ omnisharp
+ phpactor
+ svelte

# Keybinds

### Bindings

#### Visual mode

##### Normal keybinds
- <kbd>shift</kbd>+<kbd>j</kbd> `Move the currently selected line up`
- <kbd>shift</kbd>+<kbd>k</kbd> `Move the currently selected line down`

#### Normal mode

##### Normal keybinds

###### buffer related
- <kbd>\<leader\></kbd>+<kbd>b</kbd>+<kbd>n</kbd> `Switch no next buffer`
- <kbd>\<leader\></kbd>+<kbd>b</kbd>+<kbd>p</kbd> `Switch no previous buffer`
- <kbd>\<leader\></kbd>+<kbd>b</kbd>+<kbd>d</kbd> `Delete current buffer`
- <kbd>\<leader\></kbd>+<kbd>b</kbd>+<kbd>c</kbd> `Close current pane`

###### lsp related
- <kbd>g</kbd>+<kbd>D</kbd> `Go to declaration`
- <kbd>g</kbd>+<kbd>d</kbd> `Go to definition`
- <kbd>K</kbd> `Hover`
- <kbd>\<leader\></kbd>+<kbd>r</kbd>+<kbd>n</kbd> `Rename symbol`
- <kbd>control</kbd>+<kbd>.</kbd> `Code actions`
- <kbd>g</kbd>+<kbd>r</kbd> `Go to references`
- <kbd>\<leader\></kbd>+<kbd>f</kbd> `Format current file`
- <kbd>\<leader\></kbd>+<kbd>c</kbd>+<kbd>n</kbd> `Document symbol`
- <kbd>control</kbd>+<kbd>b</kbd> `Scroll down docs`
- <kbd>control</kbd>+<kbd>f</kbd> `Scroll up docs`
- <kbd>control</kbd>+<kbd>space</kbd> `Accept currently selected suggestion`
- <kbd>control</kbd>+<kbd>e</kbd> `Close suggestion popup`
- <kbd>return</kbd> `Confirm currently selected suggestion`

##### Plugin keybinds

###### plugin: nvimtree
- <kbd>control</kbd>+<kbd>b</kbd> `Open nvimtree`
- <kbd>alt</kbd>+<kbd>b</kbd> `Toggle nvimtree`

> There's a reason these are 2 separate keybinds

###### plugin: todo-comments
- <kbd>]</kbd><kbd>t</kbd> `Jump to the next todo comment`
- <kbd>[</kbd><kbd>t</kbd> `Jump to the previous todo comment`
- <kbd>\<leader\></kbd>+<kbd>c</kbd>+<kbd>t</kbd> `Open todo comments in quick fix list`

###### plugin: telescope
- <kbd>\<leader\></kbd>+<kbd>f</kbd>+<kbd>f</kbd> `Find files`
- <kbd>\<leader\></kbd>+<kbd>f</kbd>+<kbd>g</kbd> `Live grep`
- <kbd>\<leader\></kbd>+<kbd>f</kbd>+<kbd>b</kbd> `Show buffers`
- <kbd>\<leader\></kbd>+<kbd>f</kbd>+<kbd>h</kbd> `Help tags`
- <kbd>\<leader\></kbd>+<kbd>f</kbd>+<kbd>t</kbd> `Treesitter symbols`
- <kbd>\<leader\></kbd>+<kbd>t</kbd>+<kbd>t</kbd> `Open todos in the telescope prompt`
- <kbd>\<leader\></kbd>+<kbd>d</kbd>+<kbd>i</kbd> `Diagnostics`

### Text objects

- <kbd>af</kbd> `Outer function`
- <kbd>if</kbd> `Inner function`
- <kbd>ac</kbd> `Outer class`
- <kbd>ic</kbd> `Inner class`
- <kbd>ak</kbd> `Outer parameter`
- <kbd>ik</kbd> `Inner parameter`
- <kbd>al</kbd> `Outer loop`
- <kbd>il</kbd> `Inner loop`
