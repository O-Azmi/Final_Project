ActiveAdmin.register Book do
  remove_filter :book_image_attachment, :book_image_blob, :author, :genre, :order_details, :orders, :publisher
  
  permit_params :book_name, :book_date, :book_price, :book_description, :book_image

  form do |f|
    f.inputs do
      f.input :book_name
      f.input :book_date
      f.input :book_price
      f.input :book_description
      f.input :book_image, as: :file
    end
    f.actions
  end
end
