class Publisher < ApplicationRecord
    has_many :books
    validates :publisher_name, presence: true

def self.ransackable_attributes(auth_object = nil)
        %w[publisher_name publication_date created_at updated_at]
    end
end
