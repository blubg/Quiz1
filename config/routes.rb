Rails.application.routes.draw do
  resources :support_requests

get 'support_requests/index'
root "support_requests#index"

end
