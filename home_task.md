1. Добавить кнопки добавления нового слова рядом с каждой новой фразе.
2. Слева от фразы добавить кликабельный лейбл перенаправляющий пользователя на страницу редактирования
3. Добавить ограничение на ввод только одного слова. Если пользователь вводит фразу, то она будет разбита на пробелы 
и будет добавленна только первая часть.
3* При нажатии на кнопку, всплывает предупреждение, сделай это с помощью jquery.
3* Фраза не будет добавленна, поле переочистится.

5. Узнай как делать другим задним фоном теги.
6. Если значение в имение последнего хеша и предпоследнего хэша не совпадают, то имя последнего хэша добовляется в общую фразу,
иначе - нет.
6* Можно не делать общую фразу, а перед добавлением элемента в хэш проверять предыдущее имя, если совпадает - запись добавленна
не будет, если же именна разные, запись будет добавленна. А затем просмотреть все значения и слить воедино.

7. Нужно поменять цвет последнего слова, если пользовательно не может добавить после него новое слово к фразе.
Для этого проверятся имя последнего элемента в хэше, если совпадает- то запись добавленна не будет. 

8. Cоздай в верхнем меню кнопку для добавления новой фразы. Заходя на эту страницу ты будешь видеть тоже меню
но с тем отличием, что слова добаленные туда будут вывводиться уже как новая фраза.

9. Добавить всплывающее сообщение о том, что фраза добалена успешно. 

10. На главной странице сделать кнопку, которая создаёт новые сообщения, она принимает как параметр число уже существующих 
mY_list сетов + 1