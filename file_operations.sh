#!/bin/bash

# Создание файла для домашних животных
cat <<EOT > Домашние_животные.txt
Собака
Кошка
Хомяк
EOT

# Создание файла для вьючных животных
cat <<EOT > Вьючные_животные.txt
Лошадь
Верблюд
Осел
EOT

# Объединение файлов
cat Домашние_животные.txt Вьючные_животные.txt > Все_животные.txt

# Просмотр содержимого файла
cat Все_животные.txt

# Переименование файла
mv Все_животные.txt Друзья_человека.txt

# Создание директории
mkdir Питомник

# Перемещение файла
mv Друзья_человека.txt Питомник/
