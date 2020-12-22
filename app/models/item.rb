class Item < ApplicationRecord
  validates :name, :category, presence: { message: 'não pode ficar em branco' }
end