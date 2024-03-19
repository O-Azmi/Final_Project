class Customer < ApplicationRecord
    belongs_to :province
    has_many :orders
  
    validates :full_name, :email_address, :address, :username, :password, :zip_code, presence: true
  
    def self.ransackable_attributes(auth_object = nil)
      ["address", "created_at", "email_address", "full_name", "id", "id_value", "password", "updated_at", "username", "zip_code", "province_id"]
    end
  
    def self.ransackable_associations(auth_object = nil)
      ["orders", "province"]
    end
  end
  