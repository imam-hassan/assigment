Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
  
  get "pages/home",t0:
  "pages#home"

  get "pages/contact",t0:
  "pages#contact"

  get "pages/works",t0:
  "pages#works"

  get "pages/about",t0:
  "pages#about"


  post "pages/contact",t0:
  "pages#contact_submit"

  get "pages/contact-feedback",t0:
  "pages#contact_feedback"

  get "pages/logout", to:
  "sessions#destroy"

  
  get "sessions/login", to:
  "sessions#new"

 



  

  root "pages#home"
end
