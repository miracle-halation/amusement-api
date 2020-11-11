class PuzzleSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :shape_id
	belongs_to :shape
end
