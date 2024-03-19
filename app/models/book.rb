class Book < ApplicationRecord
    alias_attribute :book_date, :bok_date

    has_one_attached :book_image
    belongs_to :genre
    belongs_to :publisher
    belongs_to :author
  
    has_many :order_details
    has_many :orders, through: :order_details
    validates :book_name, :book_date, :book_description, presence: true
    validates :book_price, presence: true, numericality: { greater_than_or_equal: 0 }

    def self.ransackable_attributes(auth_object = nil)
        super + %w[book_date book_description book_price book_title created_at id id_value updated_at]
      end
    
      def self.ransackable_associations(auth_object = nil)
        super + %w[author book_image_attachment book_image_blob genre order_details orders publisher]
      end
end
