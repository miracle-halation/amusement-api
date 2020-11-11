class PieceSerializer < ActiveModel::Serializer
  attributes :id, :name, :shape_id, :select, :angle
	belongs_to :shape
end
