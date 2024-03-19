class Author < ApplicationRecord
    has_many :books
    validates :author_name, :author_birthdate, :author_birthplace, presence: true
    
    def self.ransackable_associations(auth_object = nil)
        ["books"]
      end
      def self.ransackable_attributes(auth_object = nil)
        ["author_birthdate", "author_birthplace", "author_name", "created_at", "id", "id_value", "updated_at"]
      end
end
