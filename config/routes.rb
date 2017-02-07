Rails.application.routes.draw do
  resources :tasks
  resources :priorities
  resources :statuses
  resources :sprint_teams
  resources :sprints
  resources :team_users
  resources :teams
  resources :users
  resources :epics
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
