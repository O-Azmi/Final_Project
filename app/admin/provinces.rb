ActiveAdmin.register Province do
  permit_params :province_name, :tax_rate
  
  form do |f|
    f.inputs do
      f.input :province_name
      f.input :tax_rate
    end
    f.actions
  end
end
