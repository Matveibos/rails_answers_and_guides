1. How you can create simple post request with json params?
      
      curl -X POST -d ' {"token":"7baced8d61aa5d47e0a7059c1ceaa4ba","question":"Буря %WORD% небо кроет, Вихри снежные крутя"}'
      http://tester1111.herokuapp.com/registration 

2. Another simple request 
      
            curl -X POST -d '{ question:"Отчизны внемлем призыванье",  "id":6595, "level":1}' http://78.155.219.159/quiz
            { "question" => "Отчизны внемлем призыванье",  "id"       => 6595, "level"    => 1}

            curl -X POST -d ' {"question":"И блеск, и тень, и говор волн","id":"12", "level":"1"}'  https://contest-rails-5.herokuapp.com/quiz

            curl -X POST -d ' {"question":"И блеск, и тень, и говор волн","id":"12", "level":"1"}'  http://78.155.219.159/quiz

            require 'net/http'
            uri = URI('http://pushkin.rubyroidlabs.com/quiz')
            parameters = {
                  answer: 'answer',
                  token: '79f539abd88950dd654f6d52ef0ad8a6',
                  task_id: 996172
            }
            res = Net::HTTP.post_form(uri, parameters)
            puts res.body


            uri = URI('https://pushkin-contest111.herokuapp.com/quiz')
            parameters = {
                  answer: 'answer',
                  token: "094687c8f9437d615e6f48cc07d1d859",
                  task_id: 476614            
            }
            res = Net::HTTP.post_form(uri, parameters)
            puts res.body

            {"question"=>"Пятьсот рублей, проигранных тобою", "id"=>456614, "level"=>1}}
            "094687c8f9437d615e6f48cc07d1d859"


      


      
    
      
      
      
      
