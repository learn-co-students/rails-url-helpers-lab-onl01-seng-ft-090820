Rails.application.routes.draw do
  resources :students, only: [:index, :show, :activate] 
  # get '/students/:id/activate', to: "student#activate"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
