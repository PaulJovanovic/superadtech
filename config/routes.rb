Rails.application.routes.draw do
  root to: "home#ad300x250"
  get "/ad300x250", to: "home#ad300x250"
  get "/ad728x90", to: "home#ad728x90"
  get "/ad300x600", to: "home#ad300x600"
  get "/ad320x50", to: "home#ad320x50"
  constraints subdomain: "api" do
    scope module: :api, defaults: { format: :json } do
      namespace :v0 do
        resources :publishers do
          member do
            get :ad
          end
        end
      end
    end
  end

  #temporary
  namespace :api do
    namespace :v0 do
      resources :publishers do
        member do
          get :ad
        end
      end
    end
  end
end
