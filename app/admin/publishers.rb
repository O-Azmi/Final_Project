ActiveAdmin.register Publisher do
  permit_params :publisher_name, :publication_date
  
  form do |f|
    f.inputs do
      f.input :publisher_name
      f.input :publication_date
    end
    f.actions
  end
end
