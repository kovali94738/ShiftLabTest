# ShiftLabTest
В рамках данного проекта были реализованы следующие функции и экраны:

Экран Регистрации:
Разработан экран, позволяющий пользователям вводить свои данные.
Для ознакомления с требованиями к данным, пользователи могут нажать на надпись "By registering, you…".
Для завершения регистрации, необходимо нажать на зеленую рамку, находящуюся под последним полем ввода (textfield).
Для выбора даты рождения использовался компонент UIDatePicker.
Реализованы всплывающие уведомления (UIAlert) для отображения сообщений об ошибках при валидации данных.

Главный Экран:
Создан главный экран, на котором отображается список всех доступных контестов из API.
Пользователи могут нажать на любой контест, чтобы открыть его веб-сайт. Это достигнуто с помощью компонента WebView.
На главном экране также присутствует кнопка "Приветствие", по нажатии на которую открывается модальное окно с приветствием пользователя. Данные пользователя кешируются с использованием CoreData.
Модальное окно можно закрыть с помощью кнопки "Close".
Добавлена функция удаления данных пользователя для удобства возврата на экран регистрации.

WebView Экран:
Создан экран WebView, предназначенный для отображения веб-сайтов контестов.

Модальный Экран:
Разработан модальный экран с приветствием пользователя.

Используемые паттерны и архитектура:
Для построения приложения использован паттерн координатор (Coordinator).
Проект выполнен с использованием архитектуры MVP (Model-View-Presenter).

Сохранение Сессии:
Реализован механизм сохранения сессии, что позволяет пользователям оставаться в системе после регистрации.
Если пользователь уже зарегистрирован, то следующий запуск приложения начнется с главного экрана без необходимости повторной авторизации.

Хранение Текстовых Данных:
Текстовые данные для представлений хранятся в формате JSON-файла.
