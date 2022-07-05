# dotfiles

Jakob's dotfiles for zsh, nvim, git, and more.

They assume you're using macOS.

## Installation

    $ git clone git@github.com:gabebw/dotfiles.git ~/.dotfiles
    $ cd ~/.dotfiles
    $ ./install.sh

It will install [rcm] and use that to safely symlink the dotfiles, prompting you
if a file already exists.

[rcm]: http://thoughtbot.github.io/rcm/rcm.7.html

## Organization

`rcm` will symlink all files into place, keeping the folder structure relative
to the tag root. However, non-configuration files and folders like `system/`,
`Brewfile`, `README.md`, etc will not be linked because they are in the
`EXCLUDES` section of the [`rcrc`](/rcrc) file.

## Tags

`rcm` has the concept of tags: items under `tag-git/` are in the `git` tag, and
so on. I'm using it for organization.
