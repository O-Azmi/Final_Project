class Province < ApplicationRecord
    has_many :customers
    validates :province_name, presence: true

    def self.ransackable_attributes(auth_object = nil)
        %w[province_name tax_rate created_at updated_at]
      end
      def self.ransackable_associations(auth_object = nil)
        ["customers"]
      end
end
