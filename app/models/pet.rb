class Pet < ActiveRecord::Base
  belongs_to :categories

  validates :name, presence: true
end