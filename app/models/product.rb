class Product < ActiveRecord::Base
  validates :brand_id, presence: true
  validates :name, presence: true
  validates :price, numericality: { greater_than: 0, less_than_or_equal_to: 100 }
end
