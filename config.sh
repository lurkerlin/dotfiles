#!/bin/bash

# 检查用户目录是否存在
if [ -d "$HOME" ]; then
    # 复制.vimrc文件
    if [ -f ".vimrc" ]; then
        cp .vimrc "$HOME/"
        echo ".vimrc 文件已复制到用户目录。"
    else
        echo ".vimrc 文件不存在。"
    fi

    # 复制.bashrc文件
    if [ -f ".bashrc" ]; then
        cp .bashrc "$HOME/"
        echo ".bashrc 文件已复制到用户目录。"
    else
        echo ".bashrc 文件不存在。"
    fi

    # 复制.zshrc文件
    if [ -f ".zshrc" ]; then
        cp .zshrc "$HOME/"
        echo ".zshrc 文件已复制到用户目录。"
    else
        echo ".zshrc 文件不存在。"
    fi
else
    echo "用户目录不存在或不可访问。"
fi
