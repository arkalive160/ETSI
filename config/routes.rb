Rails.application.routes.draw do
  resources :estudiante_egresados
  resources :estudiante_activos
  resources :activos
  resources :egresados
  resources :estudiantes
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
  resources :test
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
