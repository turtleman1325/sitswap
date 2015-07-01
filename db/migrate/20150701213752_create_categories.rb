class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :pet_type

      t.timestamps
    end
  end
end
