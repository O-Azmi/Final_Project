class Order < ApplicationRecord
    belongs_to :customer
    has_many :order_details
    has_many :books, through: :order_details
    validates :order_date, :total_amount, presence: true

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "id", "id_value", "order_date", "total_amount", "updated_at"]
      end
end
