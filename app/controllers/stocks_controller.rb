class StocksController < ApplicationController

	def search
		if params[:stock].present?
			@stock = StockModel.new_form_lookup(params[:stock])
			if @stock
				render 'users/my_portfolio'
			else
				flash[:danger] = "You have entered an incorrect symbol"
				redirect_to my_portfolio_path
			end
		else
			flash[:danger] = "You have entered empty search string."
			redirect_to my_portfolio_path
		end
	end
end