#Ответы
### Минимальный набор метрик для мониторинга:
- **CPU Usage** – Контроль загрузки процессора.
- **Memory Usage (RAM)** – Мониторинг использования оперативной памяти.
- **Disk Space/Inodes** – Контроль дискового пространства и инодов.
- **HTTP Response Codes** – Отслеживание успешных и неуспешных запросов.
- **HTTP Latency** – Задержка отклика сервера.
- **I/O Wait Time** – Время ожидания ввода/вывода.

### Метрики для менеджера продукта:
- **Уровень доступности (SLA/SLO)** – Процент успешных HTTP-запросов.
- **Время обработки отчётов** – Скорость выполнения вычислений.
- **Число запросов на платформу** – Общее количество запросов.
- **Процент использования ресурсов** – Простая интерпретация загрузки системы.

### Решение для передачи ошибок разработчикам:
- **Локальные логи с ротацией** – Сбор логов с автоматической ротацией.
- **Email/Webhook уведомления** – Оповещения о критических ошибках.
- **APM-инструменты** – Использование Sentry или аналогов для уведомления об ошибках.

### Ошибка в расчёте SLA:
- **Потерянные запросы** – Запросы могут теряться или зависать.
- **Редиректы (3xx)** – Не учитываются как успешные.
- **Неправильный подсчёт запросов** – Проверьте корректность подсчёта всех запросов.
