class Ticket < ActiveRecord::Base
  belongs_to :product
  belongs_to :user

  # Don't need to validate (in most cases):
  #   ids, foreign keys, timestamps, booleans, counters
  validates_presence_of :title
  validates_length_of :title, :maximum => 255
  # validates_presence_of vs. validates_length_of :minimum => 1
  # different error messages: "can't be blank" or "is too short"
  # validates_length_of allows strings with only spaces!

  scope :visible, lambda { where(:visible => true) }
  scope :invisible, lambda { where(:visible => false) }
  scope :sorted, lambda { order("tickets.title ASC") }
  scope :newest_first, lambda { order("tickets.created_at DESC")}
  scope :search, lambda {|query| where(["title LIKE ?", "%#{query}%"])
  }
end
