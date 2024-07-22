1. Установка необходимых инструментов
   1. Установите MySQL и Python:
   Откройте терминал и выполните команды:
   sudo apt-get update
   sudo apt-get install mysql-server python3 python3-pip
   2. Запустите и настройте MySQL:
   sudo service mysql start
   sudo mysql_secure_installation
   3. Дальше установите еще эти пакеты через терминал:
   pip install mysql-connector-python
   pip install sqlalchemy
   pip install pytest
2. Клонирование и настройка проекта
   1. Клонируйте репозиторий проекта:
   В терминале выполните команду для клонирования репозитория:
   git clone https://github.com/Ablatytu/Pets
   2. Перейдите в директорию проекта:
   cd Pets
   3. Создайте и активируйте виртуальное окружение:
   В корневой директории проекта выполните:
   python3 -m venv myenv
   source myenv/bin/activate
3. Настройка база данных SСL:
   1. Подключитесь к MySQL:
   mysql -u root -p
   2. В MySQL командной строке выполните следующие SQL команды:
      CREATE DATABASE IF NOT EXISTS FriendsOfHumans;
      USE FriendsOfHumans;

      CREATE TABLE IF NOT EXISTS Animals (
          id INT AUTO_INCREMENT PRIMARY KEY,
          type VARCHAR(50),
          name VARCHAR(100),
          birth_date DATE,
          commands TEXT
     );
4. Запуск программы
    Запустите Python программу:
    python3 registry.py














