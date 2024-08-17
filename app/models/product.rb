class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_rich_text :description
  has_one_attached :poster
end
