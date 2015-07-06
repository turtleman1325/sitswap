class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string   :name
      t.integer  :user_id
      t.string   :breed
      t.string   :color
      t.boolean  :female
      t.boolean  :spayed_neutered
      t.integer  :birth_year
      t.text     :feeding
      t.text     :medications
      t.date     :vaccinations
      t.text     :vaccination_medical_notes
      t.date     :flea_tick_application
      t.text     :temperament
      t.text     :notes

      t.timestamps
    end
  end
end
