class Product < ApplicationRecord
  has_many :images
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description, length: { in: 10..500 }
  # validates :inventory, numericality: { only_integer: true }
  belongs_to :supplier
  has_many :order
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  # def images
  #   Image.where(product_id: id)
  # end
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
