Rememday::Application.routes.draw do
  resources :entries
  root 'entries#index'
end
