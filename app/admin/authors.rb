ActiveAdmin.register Author do
  permit_params :author_name, :author_birthdate, :author_birthplace
  
  form do |f|
    f.inputs do
      f.input :author_name
      f.input :author_birthdate
      f.input :author_birthplace
    end
    f.actions
  end
end
