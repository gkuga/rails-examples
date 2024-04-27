Rails.application.routes.draw do
  root 'static_pages#top'
  get '/after_login', to: 'static_pages#after_login'
  resource :user, only: %i[new create]
  get '/api/v1/line/configuration', to: 'api/v1/line#configuration'
end
