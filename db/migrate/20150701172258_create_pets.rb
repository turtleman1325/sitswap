class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :user_id
      t.string :breed
      t.string :color
      t.boolean :female
      t.boolean :spayed_neutered
      t.integer :birth_year
      t.date :rabies_vaccination
      t.date :bordetella_vaccination
      t.text :medications
      t.text :feeding
      t.text :notes

      t.timestamps
    end
  end
end
