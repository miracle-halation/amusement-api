class AddColumnToPieces < ActiveRecord::Migration[6.0]
  def change
    add_column :pieces, :select, :boolean, null:false, default:false
    add_column :pieces, :angle, :integer, null:false, default: 0
  end
end
