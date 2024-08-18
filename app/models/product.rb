class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :line_items
  has_rich_text :description
  has_one_attached :poster
  before_destroy :ensure_not_referenced_by_any_line_item

  private

  def ensure_not_referenced_by_any_line_item
    return if line_items.empty?

    errors.add(:base, "Cannot detroy product.\nProduct is still referenced in Line Items")
    throw :abort
  end
end
