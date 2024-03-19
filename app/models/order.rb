class Order < ApplicationRecord
    belongs_to :customer
    has_many :order_details
    has_many :books, through: :order_details
    validates :order_date, :total_amount, presence: true
end
