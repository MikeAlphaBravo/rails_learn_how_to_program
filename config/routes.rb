Rails.application.routes.draw do
  resources :weeks do
    resources :days
  end

  resources :days do
    resources :lessons
  end
end
