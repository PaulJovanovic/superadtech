Rails.application.routes.draw do
  root to: "home#index"
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
