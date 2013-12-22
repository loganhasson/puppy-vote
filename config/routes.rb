PuppyVote::Application.routes.draw do
  
  get '/options' => 'options#index'
  patch '/options' => 'options#update'
  get '/results' => 'results#index'

  root 'options#index'
end
