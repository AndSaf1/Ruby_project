Rails.application.routes.draw do
  get 'posts/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  mount Api => '/api'
  
  get '/networks/', to: 'posts#show', as: 'networks'
  
end
