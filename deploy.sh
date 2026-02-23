#!/bin/bash
# Скрипт деплоя на хостинг по SSH
# 
# Использование:
#   1. Настройте переменные ниже (HOST, USER, REMOTE_PATH)
#   2. Убедитесь, что SSH-ключ добавлен на сервер: ssh-copy-id user@host
#   3. Запустите: ./deploy.sh

set -e

# === НАСТРОЙКИ — измените под свой хостинг ===
HOST="${DEPLOY_HOST:-your-server.com}"      # Адрес сервера
USER="${DEPLOY_USER:-deploy}"               # Пользователь SSH
REMOTE_PATH="${DEPLOY_PATH:-/var/www/new-project}"  # Путь на сервере

echo "Деплой на $USER@$HOST:$REMOTE_PATH"

# Синхронизация файлов через rsync (исключая venv, .git и т.д.)
rsync -avz --delete \
  --exclude 'venv/' \
  --exclude '.venv/' \
  --exclude '.git/' \
  --exclude '__pycache__/' \
  --exclude '*.pyc' \
  --exclude '.env' \
  --exclude 'gh' \
  . "$USER@$HOST:$REMOTE_PATH/"

echo "Деплой завершён."
