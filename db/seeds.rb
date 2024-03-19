require 'csv'
require 'faker'

# Populate Authors table
csv_file_authors = Rails.root.join('db/books.csv')
csv_data_authors = File.read(csv_file_authors)
authors = CSV.parse(csv_data_authors, headers: true)

authors.take(50).each do |author|
    Author.find_or_create_by(author_name: author['Book-Author'], author_birthdate: Faker::Date.birthday(min_age: 20, max_age: 70), author_birthplace: Faker::Address.city)
end


# Populate Genres table
csv_file_genres = Rails.root.join('db/books_2.csv')
csv_data_genres = File.read(csv_file_genres)
genres = CSV.parse(csv_data_genres, headers: true)

genres.each do |genre|
  Genre.find_or_create_by(genre_name: genre['Genre'])
end

# Populate Publishers table
csv_file_publishers = Rails.root.join('db/books.csv')
csv_data_publishers = File.read(csv_file_publishers)
publishers = CSV.parse(csv_data_publishers, headers: true)

publishers.take(50).each do |publisher|
  Publisher.find_or_create_by(
    publisher_name: publisher['Publisher'],
    publication_date: publisher['Year-Of-Publication'] 
  )
end

# Populate Books table
csv_file_books = Rails.root.join('db/books.csv')
csv_data_books = File.read(csv_file_books)
books_csv = CSV.parse(csv_data_books, headers: true)

books_csv.take(50).each do |book|
  author = Author.order('RANDOM()').first 
  publisher = Publisher.order('RANDOM()').first 
  genre = Genre.order('RANDOM()').first

  Book.create(
    book_name: book['Book-Title'],
    book_date: Faker::Date.between(from: 50.years.ago, to: Date.today),
    book_price: Faker::Commerce.price(range: 10.0..100.0),
    book_description: Faker::Books::Lovecraft.paragraphs,
    author_id: author.id,
    publisher_id: publisher.id,
    genre_id: genre.id
  )
end
