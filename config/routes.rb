Rails.application.routes.draw do
  root 'tasks#index'
  resources :tasks
  match 'tasks/:id/complete' => 'tasks#complete', via: :get, as: :complete
end
