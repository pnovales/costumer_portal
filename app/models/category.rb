class Category < ActiveRecord::Base
  has_many :products

  #CONTENT_TYPES = ['text', 'HTML']

  validates_presence_of :name
  validates_length_of :name, :maximum => 255
  #validates_inclusion_of :content_type, :in => CONTENT_TYPES, :message => "must be one of: #{CONTENT_TYPES.join(', ')}"
  #validates_presence_of :content

  scope :visible, lambda { where(:visible => true) }
  scope :invisible, lambda { where(:visible => false) }
  scope :sorted, lambda { order("categories.name ASC") }
  scope :newest_first, lambda { order("categories.created_at DESC")}
end
