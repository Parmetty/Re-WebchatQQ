#!/bin/bash

# 进入项目根目录
cd "$(dirname "$0")/.."

# 检查Python是否可用
if command -v python3 &> /dev/null; then
    PY_CMD=python3
elif command -v python &> /dev/null; then
    PY_CMD=python
else
    echo "错误: 未找到Python解释器"
    exit 1
fi

# 获取本机IP地址
IP_ADDRESS=$(hostname -I | awk '{print $1}')
if [ -z "$IP_ADDRESS" ]; then
    IP_ADDRESS="127.0.0.1"
fi

echo "========================================"
echo "   WebChatQQ 前端服务器启动中..."
echo "========================================"
echo ""
echo "本地访问: http://localhost:8000"
echo "局域网访问: http://${IP_ADDRESS}:8000"
echo ""
echo "请确保 go-cqhttp 已在另一个终端中运行"
echo "========================================"

# 启动HTTP服务器
$PY_CMD -m http.server 8000