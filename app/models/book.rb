class Book < ApplicationRecord
    has_one_attached :book_image
    belongs_to :genre, optional: true
    belongs_to :publisher, optional: true
    belongs_to :author, optional: true
  
    has_many :order_details, dependent: :nullify
    has_many :orders, through: :order_details
    validates :book_name, :book_image, :book_date, :book_description, presence: true
    validates :book_price, presence: true, numericality: { greater_than: 0 }
end
