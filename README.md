# dotfiles
My [dotfiles](https://wiki.archlinux.org/title/Dotfiles) for use with [gnu stow](https://www.gnu.org/software/stow).

Method of dotfile management: [Brandon Invergo](https://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html).

## Example usage:
```
git clone https://github.com/Hippo5412/dotfiles.git
cd dotfiles
stow nvim
stow hypr
stow --adopt cosmic && git restore cosmic
```

You can use the `stow [package]` command while in the dotfiles directory to create a symlink for a package's config file. This will not install the package itself. It will only manage the configuration files for the package. You can also use the `stow adpot [package] && git restore [package]` command to replace an existing dotfile.
