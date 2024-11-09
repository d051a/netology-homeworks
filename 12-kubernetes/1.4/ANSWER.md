
# Решение
Содержимое файлов .yaml для решения заданий можно посмотреть в директории ./k8s

## Задание 1.
запуск и остановка:
```
kubectl --kubeconfig ~/.kube/config_netology apply -f ./k8s/nginx-multitool.yaml
kubectl --kubeconfig ~/.kube/config_netology delete -f ./k8s/nginx-multitool.yam
```
Вывод после старта:
![ответ](./1.png)
Вывод curl для nginx:
![ответ](./2.png)
Вывод curl для multi-tool:
![ответ](./3.png)


## Задание 2. 
запуск и остановка:
```
kubectl --kubeconfig ~/.kube/config_netology apply -f ./k8s/nginx-multitool.yaml
kubectl --kubeconfig ~/.kube/config_netology delete -f ./k8s/nginx-multitool.yam
```
Доступ к nginx извне после в несения изменений type -> NodePort
![ответ](./4.png)