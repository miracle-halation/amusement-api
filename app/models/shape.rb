class Shape < ApplicationRecord
	has_many :puzzles
	has_many :pieces
end
