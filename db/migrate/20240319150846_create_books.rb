class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :book_name
      t.date :bok_date
      t.decimal :book_price
      t.text :book_description

      t.timestamps
    end
  end
end
