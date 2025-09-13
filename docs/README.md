# WebChatQQ

一个基于Web的QQ群聊客户端，使用go-cqhttp作为后端，单HTML文件作为前端。

## 功能特性

- 实时消息收发
- 群成员列表显示
- 图片消息支持（上传和显示）
- 戳一戳功能
- 消息撤回
- 群文件管理（查看和下载）
- 响应式设计，支持移动端和桌面端
- 即开即用，无需复杂安装
- 自定义设置保存

## 安装和运行

### 前提条件

- 已安装Java运行环境（用于运行go-cqhttp）
- Python 3.x（用于运行HTTP服务器）

### 步骤

1. 下载go-cqhttp
   - 访问 [go-cqhttp发布页面](https://github.com/Mrs4s/go-cqhttp/releases)
   - 下载适合您操作系统的最新版本
   - 将可执行文件放置在 `backend/` 目录下，并重命名为 `go-cqhttp`

2. 配置go-cqhttp
   - 修改 `backend/config.yml` 中的配置（如果需要）
   - 默认已配置HTTP API端口为16099，WebSocket端口为18088

3. 启动后端服务
   ```bash
   ./scripts/start_gocqhttp.sh