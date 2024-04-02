class Categorie < ApplicationRecord
  belongs_to :expense

  validates :categorie_name, presence: true
end
