Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'purecolle/index'
  get 'purecolle', to: 'purecolle#index'

  get 'purecolle/contact/index', to: 'purecolle#contact'
  get 'purecolle/contact/index', to: 'purecolle#contact#index'
end
