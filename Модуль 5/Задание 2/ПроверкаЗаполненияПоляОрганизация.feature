#language: ru

@tree

Функционал: Проверка заказа покупателя

Как тестировщик я хочу
проверить заполнение Заказа покупателя 
чтобы была заполнена Организация 

Сценарий: Проверка Заказа покупателя
* Создание документа
	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
	И я нажимаю на кнопку с именем 'FormCreate'
	И я нажимаю кнопку выбора у поля с именем "Partner"
	Тогда открылось окно 'Партнеры'
	И я нажимаю на кнопку с именем 'FormList'
	И в таблице "List" я перехожу к строке
			| 'Наименование'       |
			| 'Розничный клиент 1' |
	И в таблице "List" я выбираю текущую строку
	Если поле "Организация" заполнено Тогда
		И я нажимаю на кнопку с именем 'FormWrite'
		И я закрываю все окна клиентского приложения
	Иначе
		И я нажимаю кнопку выбора у поля с именем "Company"
		Тогда открылось окно 'Организации'
		И в таблице "List" я перехожу к строке
			| 'Наименование'       |
			| 'Собственная компания 1' |
		И в таблице "List" я выбираю текущую строку
		И я нажимаю на кнопку с именем 'FormWrite'
		И я закрываю все окна клиентского приложения
			