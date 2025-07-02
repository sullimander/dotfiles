#!/bin/bash

# Based on the script from @jerodsanto
# https://github.com/jerodsanto/dotfiles/blob/8ced1bda82c0ffb302013432f7e92157176a5cc7/setup.sh

home=${HOME-"~"}
me=${BASH_SOURCE[0]}
dir=$( cd $( dirname $me ) && pwd )

linkables=(*rc aliases git* mackup.cfg vim rgignore)
config_linkables=(fish ghostty nvim starship.toml zed/*)

mkdir -p $home/.config
mkdir -p $home/.config/zed
mkdir -p $home/.rbenv

function link_file() {
  local src=$dir/$1
  local dest=$home/.$2
  echo "linking $src to $dest"
  ln -nfs "$src" "$dest"
}

function unlink_file() {
  local dest=$home/.$1
  echo "unlinking $dest"
  rm $dest
}

if [[ "$1" == "install" ]]; then
  for link in "${linkables[@]}"; do
    link_file $link $link
  done

  for link in "${config_linkables[@]}"; do
    link_file $link config/$link
  done

  link_file default-gems rbenv/default-gems
elif [[ "$1" == "uninstall" ]]; then
  for link in "${linkables[@]}"; do
    unlink_file $link
  done

  for link in "${config_linkables[@]}"; do
    unlink_file $link config/$link
  done

  unlink_file default-gems rbenv/default-gems
else
  echo "Usage: $me [install|uninstall]"
  exit 1
fi
