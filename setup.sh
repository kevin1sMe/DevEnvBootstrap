#!/bin/bash

# 安装Nix（使用国内源加速）
sh <(curl https://mirrors.tuna.tsinghua.edu.cn/nix/latest/install)

# 初始化
. ~/.nix-profile/etc/profile.d/nix.sh

# 更换Nix源
mkdir -p ~/.config/nix
echo "substituters = https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store https://cache.nixos.org/
" > ~/.config/nix/nix.conf
nix-channel --add https://mirrors.tuna.tsinghua.edu.cn/nix-channels/nixpkgs-unstable nixpkgs
nix-channel --update

# 安装devbox
#curl -fsSL https://get.jetpack.io/devbox | bash
nix-env -iA nixpkgs.devbox
