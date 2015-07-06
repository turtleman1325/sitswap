class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :user_id
      t.string :pet_type
      t.string :breed
      t.string :color
      t.boolean :female
      t.boolean :spayed_neutered
      t.integer :birth_year
      t.date :rabies_vaccination
      t.date :flea_tick_application
      t.date :fecal_test
      t.date :dog_bordetella_vaccination
      t.date :dog_dhpp_vaccination
      t.date :cat_fvrcp_vaccination
      t.date :cat_felv/fiv_test
      t.date :cat_leukemia_test
      t.text :medications
      t.text :feeding
      t.text :notes

      t.timestamps
    end
  end
end
