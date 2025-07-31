My dotfiles configurations. This includes my nvim config, my i3 using polybar and rofi, zshrc and others. 

This repo was made using Stow to manage all the configuration files correctly.

Requirements
- stow 
- i3wm
- polybar (for a better bar)
- rofi (for a nice startup programs)
- feh (for background images)
- picom (for transparency)
- ghostty
- kitty
- zsh 
- starship (for zsh theme)
- backgrounds (just images to use as wallpaper)

In order to run everything, ensure everything is correctly installed (there is a .sh file in the root of the repo but I didn't test it), then just clone the repo, cd into it and run `stow .` to symlink all the files inside the repo to the `~/.config` directory. Or manually stow each of the folders e.g `stow nvim/`.
