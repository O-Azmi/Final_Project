ActiveAdmin.register Book do
  remove_filter :book_image_attachment, :book_image_blob, :author, :order_details, :orders, :publisher
  
  permit_params :book_name, :book_date, :book_price, :book_description, :book_image, :genre_id, :publisher_id, :author_id

  form do |f|
    f.inputs do
      f.input :book_name
      f.input :book_date
      f.input :book_price
      f.input :book_description
      f.input :book_image, as: :file, input_html: { accept: 'image/*' }
      f.input :genre, collection: Genre.all.map { |g| [g.genre_name, g.id] }, prompt: 'Select Genre'
      f.input :publisher_id, as: :select, collection: Publisher.all.map { |p| [p.publisher_name, p.id] }, prompt: 'Select Publisher'
      f.input :author_id, as: :select, collection: Author.all.map { |a| [a.author_name, a.id] }, prompt: 'Select Author'
    end
    f.actions
  end
end
