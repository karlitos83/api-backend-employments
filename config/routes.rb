Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  scope '/api' do
    post 'user_token' => 'user_token#create'
    
    resources :users
    resources :work_days
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
