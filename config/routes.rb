Rails.application.routes.draw do

resources :ads, :reports, :employees, :campaigns, :companies, :clients, :sessions, :users
root 'sessions#new'

get 'logout', to: 'sessions#destroy'

end
