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
