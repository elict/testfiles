Rails.application.routes.draw do
  resources :disability_tools
  resources :users
  resources :gambles
  
#  resources :gambling, :path => "/gambles/:id/gambling"
  get 'users/new'

  root 'static_pages#home'
  match '/signup', to: 'users#new', via: [:get]
  match '/help', to: 'static_pages#help', via: [:get]
  match '/about', to: 'static_pages#about', via: [:get]
  match '/update', to: 'static_pages#home', via: [:post]
  match '/update', to: 'static_pages#home', via: [:get]
  match '/content', to: 'static_pages#content', via: [:get]
  match '/gamble', to: 'static_pages#gamble', via: [:get]
  match '/gambles/:id/gambling(.:format)', to: 'gambles#gambling', via: [:get], as: 'gambling'
  match '/disability_tools/:id/generate(.:format)', to: 'disability_tools#generate', via: [:get], as: 'generation'
  match '/gambles/:id/gambling(.:format)', to: 'roll#send2', as: 'gambling_send', via: [:put]
  match '/test', to: 'disability_tools#new2', via: [:get] 
  match '/gambles/:id/gambling(.:format)', to: 'roll#send2', as: 'gambling_send_p', via: [:patch]
 match '/roll', to: 'roll#rolling', via: [:get]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
