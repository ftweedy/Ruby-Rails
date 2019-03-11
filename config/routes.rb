Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/question' => 'main#question'
  get '/number' => 'main#number'
  get '/team/:team' => 'main#team'
  get '/answers/:number' => 'main#answers'
  get '/game/:num' => 'game#try'
  get '/new_game' => 'game#reset'
  get '/user_name/:user' => 'game#user'

  root to: 'main#question'
end
