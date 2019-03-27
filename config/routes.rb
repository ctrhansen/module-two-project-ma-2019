Rails.application.routes.draw do

resources :ads, :reports, :employees, :campaigns, :companies, :clients
root to: "welcome#show"

end