Rails.application.routes.draw do
  root 'home#index'
  get '/index' => 'home#index'

  get '/lotto' => 'home#lotto'
  get '/welcome/:name' => 'home#welcome'
  get '/google' => 'home#google'
  get '/game' => 'home#game'
  get '/gameresult' => 'home#gameresult'
  get '/newGame' => 'home#newGame'
  get '/newGameresult' => 'home#newGameresult'

end
