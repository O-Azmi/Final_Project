class Genre < ApplicationRecord
    has_many :books
    validates :genre_name, presence: true
    
    def self.ransackable_attributes(auth_object = nil)
        %w[genre_name created_at updated_at]
      end
    def self.ransackable_associations(auth_object = nil)
        ["books"]
     end
end
