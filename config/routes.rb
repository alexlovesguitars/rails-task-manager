Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get "tasks", to: "tasks#index"
  get "tasks/new", to: "tasks#new", as: :new_task
  post "tasks", to: "tasks#create"
  get "tasks/:id", to: "tasks#show", as: :task
  get "tasks/:id/", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"
  delete "restaurants/:id", to: "restaurants#destroy"
end

# READ ALL
# get "tasks", to: "tasks#index"
# CREATE (Step 1 creates new entry/form, Step 2 creates entry from form)
# get "tasks/new", to: "tasks#new", as: :new_task
# post "tasks", to: "tasks#create"
# READ ONE
# get "tasks/:id", to: "tasks#show", as: :task
# EDIT - (Step 1 gets entry to edit, Step 2 saves changes)
# get "tasks/:id/", to: "tasks#edit", as: :edit_task
# patch "tasks/:id", to: "tasks#update"
# DELETE
# delete "restaurants/:id", to: "restaurants#destroy"
