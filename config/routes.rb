Rails.application.routes.draw do
  # APIのエンドポイントとして設定
  namespace :api do
    resources :main, only: [:index]
  end
end