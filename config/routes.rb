Rails.application.routes.draw do
    root 'static_pages#home'
  get  '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#Register'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
