class Author < ApplicationRecord
    has_many :books
    validates :author_name, :author_birthdate, :author_birthplace, presence: true
end
