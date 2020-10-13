class V1::PuzzlesController < ApplicationController
	def index
		shapes = Shape.all
		render json: shapes
	end

	def show
		puzzle = Puzzle.find(params[:id])
		render json: puzzle
	end

	def new
	end

	def create
	end

	def answer
	end
	
end
