class Pet < ActiveRecord::Base

  belongs_to :category

  validates :name, presence: true, length: { minimum: 2 }
  validates :breed, presence: true
  validates :color, presence: true
  validates :birth_year, presence: true, length: { minimum: 4 }
  validates :feeding, presence: true
  validates :medications, presence: true
  validates :vaccination_medical_notes, presence: true, length: { minimum: 4 }
  validates :temperament, presence: true
  validates :category, presence: true
end
