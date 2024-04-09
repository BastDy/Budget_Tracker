class Categorie < ApplicationRecord
  has_many :expense

  validates :categorie_name, presence: true
end
