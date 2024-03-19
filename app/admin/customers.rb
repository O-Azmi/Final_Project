ActiveAdmin.register Customer do
  permit_params :full_name, :email_address, :address, :username, :password, :zip_code
  
  form do |f|
    f.inputs do
      f.input :full_name
      f.input :email_address
      f.input :address
      f.input :username
      f.input :password
      f.input :zip_code
    end
    f.actions
  end
end