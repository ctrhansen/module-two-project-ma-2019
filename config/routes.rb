Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :ads, :reports, :employees, :campaigns, :companies, :clients

end
