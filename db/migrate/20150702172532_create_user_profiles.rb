class CreateUserProfiles < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.integer :zip
      t.text :about
      t.string :phone

    end
  end
end
