These are some of the dotfiles i'm currently using.

The script `main.py` can be used to install a configuration on your local machine or loading it in a specified directory.

# Usage
```shell
chmod u+x ./main.py

# install your configuration (load from current dir to home dir)
./main.py --install 
# load your configuration in a specified directory (load from home dir to specified dir)
./main.py --load --directory=$HOME/tmp
```

`./main.py --help` for more informations.

# Software
+ [sway](https://swaywm.org/) (window manager)
+ [waybar](https://github.com/Alexays/Waybar) (status bar)
+ [wofi](https://hg.sr.ht/~scoopta/wofi) (launcher/menu)
+ [gammastep](https://gitlab.com/chinstrap/gammastep) (color temperature)
+ [neovim](https://www.neovim.io) (text editor)
+ [bash](https://www.gnu.org/software/bash/) (shell)
+ [powerline-shell](https://github.com/b-ryan/powerline-shell) (shell status line)
+ [alacritty](https://alacritty.org) (terminal emulator)
+ [neofetch](https://github.com/dylanaraps/neofetch) (system information tool)
+ [dunst](https://dunst-project.org/) (notification daemon)
+ [bat](https://github.com/sharkdp/bat) (cat clone)

I also use [XWayland](https://wayland.freedesktop.org/xserver.html) for compatibility with some X applications.
