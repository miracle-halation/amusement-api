class AddColumnToShape < ActiveRecord::Migration[6.0]
  def change
    add_column :shapes, :image, :string, null: false
  end
end
