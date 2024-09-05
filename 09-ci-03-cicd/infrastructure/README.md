## Запуск инфраструктуры


1. запустить terraform

добавить personal.auto.tfwars с содержимым 

```
yandex_cloud_token         =    ""
yandex_cloud_id            =    ""
yandex_folder_id           =    ""
subnet_id                  =    ""
user                       =    "centos"

```
запустить проект

```
terraform init
terraform apply
```

дождаться IP адресов для подключения (при этом сгенерируется файл ../ansible/inventory/cicd/hosts.yml)
```
Outputs:

nexus_ip = "51.250.7.175"
sonar_ip = "84.201.135.133"
```


2. запустить ansible

```
ansible-playbook -i inventory/cicd/hosts.yml site.yml
```
