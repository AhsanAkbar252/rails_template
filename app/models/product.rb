class Product < ApplicationRecord
    has_one_attached :image
    has_many :line_items, dependent: :destroy
    validates :name, :price, :description, presence: true
end
