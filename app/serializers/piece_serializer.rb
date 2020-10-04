class PieceSerializer < ActiveModel::Serializer
  attributes :id, :name, :shape_id
	belongs_to :shape
end
