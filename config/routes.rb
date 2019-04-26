Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # patch '/students/:id/active', to: 'students#active'
  resources :students, only: [:edit, :index, :show]
  get '/students/:id/activate', to: 'students#edit', as: 'active'
end
