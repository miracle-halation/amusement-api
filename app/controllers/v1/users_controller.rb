class V1::UsersController < ApplicationController
	def index
		@user = User.find_by(uid: params[:uid])
		render json: @user
	end
end
