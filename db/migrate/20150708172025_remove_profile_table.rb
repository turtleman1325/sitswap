class RemoveProfileTable < ActiveRecord::Migration
  def up
    drop_table :profiles

    change_table :users do |t|
      t.remove :profiles_id
    end
  end

  def down
    create_table :profiles do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.text :about
      t.integer :phone

      t.timestamps null: false
    end

    add_reference :users, :profiles, index:true
  end
end
