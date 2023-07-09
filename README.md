# Environment Setup

## Prerequisites

Before you try to install any dependencies, check the versions

- NeoVim: v0.9.1

- Tmux: 3.3a

---



Environment installation could be automated by using `install-env` script. After cloning the repository onto your machine, run command:

```bash
cd <directory-of-the-cloned-repo>
chmod +x ./install-env
./install-env
```

After running the script all the necessary dependencies should be installed. Review the comments in the main script to follow the idea.

## NeoVIM

Install [nerdfonts](https://www.nerdfonts.com/).

Use for the start `JetBrainsMono Nerd Font`. How to install fonts on Ubuntu [instructions](https://askubuntu.com/questions/3697/how-do-i-install-fonts). Also you may use this [instruction](https://askubuntu.com/questions/191778/how-to-install-many-font-files-quickly-and-easily)

Install [NvChand](https://github.com/NvChad/NvChad) with this command `git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1`

---

## NvChad Configuration

`SPC` is the leader key (Space) in NvChad (like in Spacemax).

### Theming

`SPC t h` - open the themes to choose. Use `cappuccin`


### Syntax Highlighting

[Tree-sitter](https://tree-sitter.github.io/tree-sitter/) pluging is used to highlight the syntax. In case you will need specific syntax parser, you will need to install it separately.

`:TSInstall javascript` - install JavaScript syntax highlighting
`:TSInstall typescript` - install TypeScript syntax highlighting

### File Tree

[NvimTree](https://docs.rockylinux.org/books/nvchad/nvchad_ui/nvimtree/) plugin is used for this purpose.

`Ctrl + n` - opens file tree.
`m` - press to mark file, while going through the tree structure.
`a` - create a new file, while going through the tree structure.
`c` - copy a file, while going through the tree structure.
`p` - paste a file, while going through the tree structure.
`r` - rename a file, while going through the tree structure.

### File Navigation

`SPC f f` - find a file
`SPC f b` - find through the open buffers


### NvChad Cheatsheet

`SPC c h` - Open a NvChad Cheatsheet

### Window Navigation

`Ctrl + j` - move to the bottom window
`Ctrl + k` - move to the above window
`Ctrl + h` - move to the left window
`Ctrl + l` - move to the right window

`:vsp` - vertical split in nvim
`:sp` - horizontal split in nvim

`SPC n` - numbered lines on
`SPC n r` - numbered relative lines on

### tabbufline

`Tab` - move forwared to the tab
`Shift + Tab` - move backwards to the previous tab
`SPC x` - close buffer

### Terminal

Access the nvim shell
`SPC v` - vertical split
`SPC h` - horzontal split


### Customizations
To work with the customizations use two main files in this path:
`~/.config/nvim/lua/custom`
`chadrc.lua` - the file, used to override the default config of NvChad
`init.lua` - the file, used to override NeoVim options and commands
`mappings.lua` - the file, used to redefine the key mappings (tmux & nvim).


### Language Servers
LSP defines as Langauge Server Protocol.

---

## Tmux

Update the `.tmux.conf` file and run command `tmux source ~/.tmux.conf` while `tmux` is running.

Installation of the plugins by the TPM could be done by pressing Prefix + I.

#### References 

[Tmux has forever changed the way I write code.](https://www.youtube.com/watch?v=DzNmUNvnB04 "Tmux has forever changed the way I write code.")

