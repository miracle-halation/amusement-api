class V1::PuzzlesController < ApplicationController
	def index
		shapes = Shape.all
		render json: shapes
	end

	def show
		puzzle = Puzzle.find(params[:id])
		pieces = puzzle.shape.pieces
		render json: {puzzle: puzzle, pieces: pieces}
	end

	def new
	end

	def create
	end

	def answer
	end
	
end
