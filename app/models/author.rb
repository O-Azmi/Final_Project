class Author < ApplicationRecord
    has_many :books
    validates :author_id, :author_birthdate, :author_birthplace, presence: true
end
