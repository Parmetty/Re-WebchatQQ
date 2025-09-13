#!/bin/bash

# 进入后端目录
cd "$(dirname "$0")/../backend"

# 检查go-cqhttp可执行文件是否存在
if [ ! -f "go-cqhttp" ]; then
    echo "错误: 未找到go-cqhttp可执行文件"
    echo "请从 https://github.com/Mrs4s/go-cqhttp/releases 下载对应平台的版本"
    exit 1
fi

# 给执行权限
chmod +x go-cqhttp

# 启动go-cqhttp
echo "正在启动go-cqhttp..."
echo "HTTP API 端口: 16099"
echo "WebSocket 端口: 18088"
./go-cqhttp