class Product < ActiveRecord::Base
  belong_to :category
  has_many :tickets
end
