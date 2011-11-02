class LinkCategory < ActiveRecord::Base
  acts_as_list 

  has_many :links
  validates_uniqueness_of :name, :scope => :locale
  validates_presence_of :name

  accepts_nested_attributes_for :links, :allow_destroy => true
  
  scope :locale, lambda { |locale| where(:locale => locale) }
  
end
