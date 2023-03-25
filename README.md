# Welcome

This is my public neovim configuration.

Since I felt it was ready to be made public I decided to do so.

I will be updating this with more stuff as time goes on.

# Plugins

- vim-devicons
- nvim-web-devicons
- barbar
- lualine
- melange
- nvimtree
<!-- - vimspector -->
- presence.nvim
- nvim-lspconfig
- vim-commentary
- cmp-nvim-lsp
- cmp-buffer
- cmp-path
- cmp-cmdline
- nvim-cmp
- wal.vim
- doki-theme-vim
- tokyonight.nvim
- gruvbox-material
- iceberg.vim
- gruvbox
- kanagawa.nvim
- vim-nightfly-guicolors
- Colorizer
- LuaSnip
- cmp_luasnip
- nvim-treesitter
- nvim-treesitter-textobjects
- yuck.vim
- plantuml-syntax
- todo-comments
- plenary.nvim
- telescope.nvim
- gitsigns.nvim
- colorbuddy.vim
- gloombuddy
- orgmode
- leap.nvim
- nvim-autopairs

# Keybinds

## Leader key

The leader key I use is just the space key " "

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
- <kbd>control</kbd>+<kbd>b</kbd> `Toggle nvimtree`

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
