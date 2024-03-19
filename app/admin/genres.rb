ActiveAdmin.register Genre do
  permit_params :genre_name
  
  form do |f|
    f.inputs do
      f.input :genre_name
    end
    f.actions
  end
end