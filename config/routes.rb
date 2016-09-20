Rails.application.routes.draw do
  resources :asignaturas
  resources :componente_teoricos
  resources :modulos
  resources :componente_practicos
  resources :instalacions
  resources :programas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
