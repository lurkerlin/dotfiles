#!/bin/bash

# 定义要复制的配置文件和文件夹列表
config_items=(".vimrc" ".bashrc" ".zshrc" ".gitconfig" ".config")

# 获取脚本当前所在目录
script_dir=$(dirname "$0")

# 遍历配置项列表
for item in "${config_items[@]}"; do
    # 检查用户家目录中是否存在文件或文件夹
    if [ -e "$HOME/$item" ]; then
        # 使用 -R 选项复制文件或文件夹到脚本所在目录
        cp -R "$HOME/$item" "$script_dir/"
        echo "$item packed up to $script_dir"
    else
        echo "$HOME/$item 不存在。"
    fi
done

