class Categorie < ApplicationRecord
  has_many :expenses

  validates :categorie_name, presence: true
end
