My dotfiles configurations. This includes my nvim config, my i3 using polybar and rofi, zshrc and others. 

This repo was made using Stow to manage all the configuration files correctly.

What's configured in the repo?
- stow 
- i3wm
- polybar
- rofi
- feh 
- ghostty
- kitty
- zsh 
- backgrounds (just images to use as wallpaper)

In order to run everything, ensure everything is correctly installed, then just clone the repo, cd into it and run `stow .` to symlink all the files inside the repo to the `~/.config` directory. Or manually stow each of the folders e.g `stow nvim/`.
