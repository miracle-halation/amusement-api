class V1::UsersController < ApplicationController
	def index
		current_user = User.find(params[:uid])
		render json: current_user
	end
end
