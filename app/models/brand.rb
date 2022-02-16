class Brand < ApplicationRecord
  has_many :shops, dependent: :destroy
end
