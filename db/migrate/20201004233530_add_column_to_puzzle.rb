class AddColumnToPuzzle < ActiveRecord::Migration[6.0]
  def change
    add_column :puzzles, :image, :string, null: false
  end
end
