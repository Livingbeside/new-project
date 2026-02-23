# New Project

Новый проект с подключением к GitHub и хостингу по SSH.

**Репозиторий:** https://github.com/Livingbeside/new-project

## Структура

```
new-project/
├── README.md
├── .gitignore
├── deploy.sh       # Деплой на хостинг по SSH
├── requirements.txt
└── src/
    └── main.py
```

## GitHub (SSH)

Репозиторий настроен на работу по SSH:

```bash
git remote -v
# origin  git@github.com:Livingbeside/new-project.git (fetch)
# origin  git@github.com:Livingbeside/new-project.git (push)
```

Проверка SSH-подключения к GitHub:

```bash
ssh -T git@github.com
```

## Деплой на хостинг по SSH

1. Отредактируйте `deploy.sh`: укажите `HOST`, `USER`, `REMOTE_PATH`
2. Добавьте SSH-ключ на сервер: `ssh-copy-id user@host`
3. Запустите: `chmod +x deploy.sh && ./deploy.sh`

Или через переменные окружения:

```bash
DEPLOY_HOST=myserver.com DEPLOY_USER=deploy DEPLOY_PATH=/var/www/app ./deploy.sh
```

## Установка

```bash
python3 -m venv venv
source venv/bin/activate  # Linux/macOS
pip install -r requirements.txt
```

## Запуск

```bash
python src/main.py
```
