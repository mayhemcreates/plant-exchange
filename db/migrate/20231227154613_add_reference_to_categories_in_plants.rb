class AddReferenceToCategoriesInPlants < ActiveRecord::Migration[7.0]
  def change
    add_reference :plants, :categories, null: false, foreign_key: true
  end
end
