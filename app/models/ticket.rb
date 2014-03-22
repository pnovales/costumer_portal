class Ticket < ActiveRecord::Base
  belong_to :product
  belong_to :owner, class_name: User
end
