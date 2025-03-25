


# Есть несколько полезных скриптов которые я решил разместить тут


# 1.Скрипт помогает регулярно обновлять систему, полезно для поддержания актуальных версий ПО.


# #!/bin/bash
# sudo apt update -y && sudo apt upgrade -y


# 2. Скрипт для бэкапа заданной папки.


# #!/bin/bash
# BACKUP_SRC="/path/to/source/folder"
# BACKUP_DEST="/path/to/backup/folder"
# DATE=$(date +"%Y-%m-%d")

# tar -czvf "$BACKUP_DEST/backup-$DATE.tar.gz" "$BACKUP_SRC"


# 3. Мониторинг пространства на диске (Скрипт для мониторинга использования дискового пространства и отправки уведомлений на почту, если оно заканчивается).


# #!/bin/bash
# THRESHOLD=90

# df -h | awk '{ if($5 > '$THRESHOLD') print "Disk space warning: " $0; }' | mail -s "Disk Space Alert" user@example.com


# 4. Управление сервисами (скрипт для атоматизации управления сервисами).


# #!/bin/bash
# SERVICE=$1
# ACTION=$2

# if [ -z "$SERVICE" ] || [ -z "$ACTION" ]; then
#     echo "Usage: $0 [service] [start|stop|restart|status]"
#     exit 1
# fi

# sudo systemctl $ACTION $SERVICE


# 5. Скрипт для очистки системы от ненужных файлов.


# #!/bin/bash
# sudo apt-get autoremove -y
# sudo apt-get clean
# sudo rm -rf /var/tmp/*


# 6. Поиск и удаление файлов старге определенного времени.


# #!/bin/bash
# find /path/to/directory -type f -mtime +30 -exec rm -f {} \;


# 7. Автоматическое монтирование дисков.


# #!/bin/bash
# DISK="/dev/sda1"
# MOUNT_POINT="/mnt/disk"

# sudo mount $DISK $MOUNT_POINT


# 8. Мониторинг работы сервера.


# #!/bin/bash
# echo "CPU Usage:"
# top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}'

# echo "Memory Usage:"
# free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2}'


# 9. Поиск всех процессов которые занаяты определенным портом.


# #!/bin/bash
# PORT=$1

# if [ -z "$PORT" ]; then
#     echo "Usage: $0 [port]"
#     exit 1
# fi

# sudo lsof -i :$PORT


# 10. Проверка доступности веб-сайта.


# #!/bin/bash
# URL="https://example.com"
# STATUS=$(curl -o /dev/null -s -w "%{http_code}" $URL)

# if [ $STATUS -ne 200 ]; then
#     echo "Site $URL is down (status code: $STATUS)"
# else
#     echo "Site $URL is up and running"
# fi




# Спасибо за внимание.
