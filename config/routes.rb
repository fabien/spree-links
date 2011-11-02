Rails.application.routes.draw do
  match :links, :to => 'links#index', :as => 'links'
  match '/links/:category', :to => 'links#show', :as => 'link_category'

  namespace :admin do 
    resources :link_categories do
      collection do
        post :update_positions
      end
    end
  end
end
