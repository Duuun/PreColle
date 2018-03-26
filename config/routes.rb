Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'purecolle/index'
  get 'purecolle', to: 'purecolle#index'

  get 'purecolle/contact', to: 'purecolle#contact'
  get 'purecolle/about', to: 'purecolle#about'

end
