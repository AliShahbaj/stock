Rails.application.routes.draw do
  devise_for :users
	root 'users#my_portfolio'
	get 'my_portfolio', to: "users#my_portfolio"
	get 'stock_search', to: "stocks#search"
end
