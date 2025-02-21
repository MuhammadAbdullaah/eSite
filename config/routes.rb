Rails.application.routes.draw do

  # app home route
  root "home#index"

  # authentication routes
  Rails.application.routes.draw do
    devise_for :users, controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations',
    }
  end

end
