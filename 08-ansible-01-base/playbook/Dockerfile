FROM ubuntu:20.04

# Обновление системы и установка Python
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-venv \
    && apt-get clean

# Установка зависимостей Ansible
RUN pip3 install ansible

# Длительный процесс для того, чтобы контейнер не завершался
CMD ["sleep", "infinity"]
