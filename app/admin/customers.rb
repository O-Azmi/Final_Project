ActiveAdmin.register Customer do
  permit_params :full_name, :email_address, :address, :username, :password, :zip_code, :province_id

  filter :full_name_cont, label: 'Full Name'
  filter :email_address_cont, label: 'Email Address'
  filter :address_cont, label: 'Address'
  filter :username_cont, label: 'Username'
  filter :zip_code_cont, label: 'Zip Code'
  filter :province_id, as: :select, collection: proc { Province.pluck(:province_name, :id) }, label: 'Province'

  form do |f|
    f.inputs do
      f.input :full_name
      f.input :email_address
      f.input :address
      f.input :username
      f.input :password
      f.input :zip_code
      f.input :province_id, as: :select, collection: Province.pluck(:province_name, :id), include_blank: 'Select Province'
    end
    f.actions
  end
end
