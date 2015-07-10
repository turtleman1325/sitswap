class Pet < ActiveRecord::Base
  has_and_belongs_to_many :categories

  validates :name, presence: true, length: { minimum: 2 }
  validates :breed, presence: true, length: { minimum: 3 }
  validates :color, presence: true, length: { minimum: 3 }
  validates :birth_year, presence: true, length: { minimum: 4 }
  validates :feeding, presence: true, length: { minimum: 2 }
  validates :medications, presence: true, length: { minimum: 2 }
  validates :vaccination_medical_notes, presence: true, length: { minimum: 4 }
  validates :temperament, presence: true, length: { minimum: 2 }
  validates :notes, presence: true, length: { minimum: 2 }
end
