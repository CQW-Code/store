Rails.application.routes.draw do

  root 'shops#index'

  resources :shops do
   resources :departments
  end

  scope 'department/:department_id', as: 'department' do
    resources :items, only: [:new, :create]
  end
end


