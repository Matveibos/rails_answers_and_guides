1. How you can create simple post request with json params?
      
      curl -X POST -d ' {"token":"7baced8d61aa5d47e0a7059c1ceaa4ba","question":"Буря %WORD% небо кроет, Вихри снежные крутя"}'
      http://tester1111.herokuapp.com/registration 

2. Another simple request 
      
      curl -X POST -d '{ "question" => "Отчизны внемлем призыванье",  "id"=> 6595, "level"=> 1}' http://78.155.219.159/quiz
      { "question" => "Отчизны внемлем призыванье",  "id"       => 6595, "level"    => 1}
