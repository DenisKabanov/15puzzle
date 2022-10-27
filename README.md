# 15puzzle

для корректной работы приложения, на компьютере должны быть установлены python и java script

перед запуском сервера необходимо установить
pip install uvicorn
pip install websockets
pip install fastapi
pip install typing
pip install json


настройка поля
1. конфигурация происходит в script.js в папке client
2. mix_count отвечает за размешивание ячеек
2.1 если mix_count равен 0 то у первого игрока доска будет сразу правильно заполнена
3. randomState обозначает количество ячеек, которые различаются у игроков
3.1 если randomState равен 0, то поля игроков будут идентичными

для запуска сервера
1. в папке client в файле script.js указать нужный ip в поле server_id
2. в start.bat указать ip сервера, после --host
3. запускать сервер через start.bat
3.1 для корректной работы вкладку хоста и консоль нельзя закрывать

для подключения игроков
1. в папке client в файле script.js указать нужный ip в поле server_id
2. для подключения игроков запускать connect.bat
2.1 если в процессе игры вкладка игрока была закрыта, то можно переподключиться, снова открыв client.html (запустив connect.bat), игра продолжится с того же места


пример: 
действия хоста:
    редактирует файл start.bat:
        заменяет строку:
            uvicorn main:app --reload --host 
        на (в качестве примера)
            uvicorn main:app --reload --host 78.40.188.79
    редактирует файл client/script.js:
        заменяет значения в config:
            randomState - число различий между полями игроков
            mix_count - как сильно поля игроков будут отличаться от правильно решённого
            server_id - ip сервера, к которому будет подключение, в нашем примере на:
                server_id: "78.40.188.79"
    после сохранения изменений, хост запускает start.bat

действия игроков:
    редактирует файл client/script.js:
        заменяет значения в config:
            server_id - ip сервера, к которому будет подключение, в нашем примере на:
                server_id: "78.40.188.79"
    после сохранения изменений, игрок запускает connect.bat