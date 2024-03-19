class CreateCustomers < ActiveRecord::Migration[7.1]
  def change
    create_table :customers do |t|
      t.string :full_name
      t.string :email_address
      t.string :address
      t.string :username
      t.string :password
      t.string :zip_code

      t.timestamps
    end
  end
end
