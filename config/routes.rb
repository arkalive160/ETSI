Rails.application.routes.draw do
  resources :locacions
  resources :tallers
  resources :procedimientos
  resources :materials
  resources :unidads
  resources :asignaturas
  resources :componente_teoricos
  resources :modulos
  resources :componente_practicos
  resources :instalacions
  resources :programas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
