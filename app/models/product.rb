class Product < ApplicationRecord
  has_many :images
  has_many :category_products
  has_many :categories, through: :category_products
  belongs_to :supplier
  has_many :carted_products
  has_many :orders, through: :carted_products

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description, length: { in: 10..500 }

  def is_discounted?
    price <= 10
  end

  def tax
    return price * 0.09
  end

  def total
    return price + tax
  end
end
