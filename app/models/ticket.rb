class Ticket < ActiveRecord::Base
  belongs_to :product
  belongs_to :owner, class_name: User
end
