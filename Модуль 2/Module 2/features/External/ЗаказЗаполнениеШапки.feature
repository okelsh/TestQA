#language: ru

@tree
@ExportScenarios

Функционал: Заполнение шапки документа Заказ

Сценарий: Заполнение шапки документа Заказ
* Заполение шапки
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Все для дома"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Попов Б.В. ИЧП '
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Большой'
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
		