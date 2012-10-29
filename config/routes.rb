Listenlater::Application.routes.draw do

  resources :feeds do
    resources :bookmarks
  end

  root to: "feeds#new"

end
