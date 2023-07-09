# Environment Setup

Environment installation could be automated by using `install-env` script. After cloning the repository onto your machine, run command:

```bash
cd <directory-of-the-cloned-repo>
chmod +x ./install-env
./install-env
```

After running the script all the necessary dependencies should be installed.

Please, review the comments in the main script to follow the idea.

## NeoVIM

Install [nerdfonts](https://www.nerdfonts.com/).
Use for the start `JetBrainsMono Nerd Font`. How to install fonts on Ubuntu [instructions](https://askubuntu.com/questions/3697/how-do-i-install-fonts). Also you may use this [instruction](https://askubuntu.com/questions/191778/how-to-install-many-font-files-quickly-and-easily)

Install [NvChand](https://github.com/NvChad/NvChad) with this command `git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1`


## Tmux

Update the `.tmux.conf` file and run command `tmux source ~/.tmux.conf` while `tmux` is running.

Installation of the plugins by the TPM could be done by pressing Prefix + I.

#### References 

[Tmux has forever changed the way I write code.](https://www.youtube.com/watch?v=DzNmUNvnB04 "Tmux has forever changed the way I write code.")

