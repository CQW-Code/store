class Department < ApplicationRecord
  belongs_to :shop
  has_many :items
  
end
