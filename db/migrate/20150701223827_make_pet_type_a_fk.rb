class MakePetTypeAFk < ActiveRecord::Migration
  def change
    change_table :pets do |t|
      t.integer  :category_id
    end
  end
end
