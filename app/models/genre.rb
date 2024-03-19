class Genre < ApplicationRecord
    has_many :books
    validtes :genre_name, presence: true
end
