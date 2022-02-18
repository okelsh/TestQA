#language: en

@tree

Functionality: проверку расчета суммы документа Заказ 

As Пользователь
I want проверить поведение документа заказ
To не было ошибок

Scenario: Проверка расчета суммы документа Заказ
	Given I open hyperlink "e1cib/list/Документ.Заказ"
	Given I open hyperlink "e1cib/data/Документ.Заказ?ref=bbf30050ba5c887711e1fe6190994fe8"
	Then "Заказ * dated *" window is opened
	And I activate field named "ТоварыЦена" in "Товары" table
	And I select current line in "Товары" table
	And I input "50,00" text in the field named "ТоварыЦена" of "Товары" table
	And I finish line editing in "Товары" table
	And I activate field named "ТоварыКоличество" in "Товары" table
	And I select current line in "Товары" table
	And I input "200" text in the field named "ТоварыКоличество" of "Товары" table
	And I finish line editing in "Товары" table
	And in "Товары" table "Сумма" field is set to "10 000,00"
	And I click the button named "ФормаПровестиИЗакрыть"

Scenario: Проверка добавлении Услуги в документ Заказ 
	Given I open hyperlink "e1cib/list/Документ.Заказ"
	Given I open hyperlink "e1cib/data/Документ.Заказ?ref=bbf30050ba5c887711e1fe6190994fe8"
	Then "Заказ * dated * *" window is opened
	And in the table "Товары" I click the button named "ТоварыДобавить"
	And I click choice button of the attribute named "ТоварыТовар" in "Товары" table
	Then "Товары" window is opened
	And I go to line in "Список" table
		| 'Наименование' |
		| 'Доставка'     |
	And I select current line in "Список" table
	Then "Заказ * dated * *" window is opened
	And I finish line editing in "Товары" table
	And I activate field named "ТоварыКоличество" in "Товары" table
	And I input "1" text in the field named "ТоварыКоличество" of "Товары" table
	And I finish line editing in "Товары" table
	And I click the button named "ФормаПровестиИЗакрыть"
	
		


		
	
	
	
	
	
		
	
	
	
	
	
		
	
	
		
	
		
		
		

