# lackros_infra
lackros Infra repository

# Подключение к удаленному компьютеру через другой компьютеру
ssh -i ~/.ssh/appuser -A appuser@178.154.253.113 "ssh 10.128.0.17"

# Подключение по ssh к someinternalhost
Для подключения к someinternalhost необходимо:
1) что-бы этот компьютер был доступен по ip адресу, то есть либо дать ему внешний IP адрес, либо настроить VPN сеть;
2) в файле hosts указать для компьютера someinternalhost его ip адрес.

# Подключение к bastion и someinternalhost
bastion_IP = 178.154.253.113
someinternalhost_IP = 10.128.0.17

# Подключение к reddit-app
testapp_IP = 178.154.253.66
testapp_port = 9292

# Домашнее задание Подготовка базового образа VM при помощи Packer.
Было сделано:
1)Скачан, установлен и настроен Packer
2)Создана новая ветка packer-base
3)Создан сервисный аккаунт на yandex cloud
4)В папке packer создан конфигурационный файл для packer - ubuntu16.json, с помощью которого создается образ диска, из которого можно развернуть ВМ с установленными пакетами
5)Внутри папки packer создана папка scripts, в которой лежат sh файлы, которые указывается в ubuntu16.json для установки пакетов
6)С помощью команды packer validate ./ubuntu16.json скрипт проверен на ошибки
7)С помощью команды packer build ./ubuntu16.json создан образ ВМ
8)Создана ВМ на основе образа, задеплоено приложение, проверить можно по ссылке http://84.201.134.72:9292
9)Создан и заполнен файл varible.json, создан файл с примером varible.json.example с данными для примера
10)Отредактирован файл ubuntu16.json с указанием переменных из файла с переменными.
11)Запускать создание образа пакером с указанием файла с переменными нужно командой "packer build -var-file=variables.json ubuntu16.json"

# Домашнее задание Практика Iac + домашка
Было сделано:
1)Выполнена практика :)
2)Определена переменная приватного ключа
3)Не понял пункта:
Определите input переменную для задания зоны в ресурсе
"yandex_compute_instance" "app". У нее должно быть значение
по умолчанию - мы же в течении практики задали зону доступности в variable "zone"
4)Отформатировал все конфигурационные файлы командой terraform fmt(подскажите для чего это?)
5)Создал файл terraform.tfvars.example, в котором указал переменные для образца.
