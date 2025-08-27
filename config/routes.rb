Rails.application.routes.draw do

  # Index
  get "tasks", to: "tasks#index", as: :tasks

  # New (must be before the show route)
  get "tasks/new", to: "tasks#new", as: :new_task
  post "tasks", to: "tasks#create"

  # Edit/Update (must be BEFORE show)
  get   "tasks/:id/edit", to: "tasks#edit",   as: :edit_task
  patch "tasks/:id",      to: "tasks#update"


  delete "tasks/:id", to: "tasks#destroy"

  # Show (placed after /tasks/new so it doesn't capture it)
  get "tasks/:id", to: "tasks#show", as: :task



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
