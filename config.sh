#!/bin/bash

# 定义要复制的配置文件和文件夹列表
config_items=(".vimrc" ".bashrc" ".zshrc" ".gitconfig" ".config" ".vim")

# 获取脚本当前所在目录
script_dir=$(dirname "$0")

# 遍历配置项列表
for item in "${config_items[@]}"; do
    # 检查脚本目录中是否存在文件或文件夹
    if [ -e "$script_dir/$item" ]; then
        # 使用 -R 选项复制文件或文件夹回用户家目录
        cp -R "$script_dir/$item" "$HOME/"
        echo "$item copy to $HOME"
    else
        echo "$script_dir/$item 不存在。"
    fi
done
