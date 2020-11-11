class ShapeSerializer < ActiveModel::Serializer
  attributes :id, :name, :image
	has_many :puzzles
  has_many :pieces
  
end
