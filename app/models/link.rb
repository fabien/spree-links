class Link < ActiveRecord::Base
  
  URL_REGEXP = /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$/ix
  DOMAIN_REGEXP = /^(http|https):\/\/([a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5})/ix
  
  belongs_to :link_category
  acts_as_list 

  validates :title, :presence => true
  validates :url, :presence => true, :format => URL_REGEXP
  validates :link_category_id, :presence => true
  
  def short_url
    self.url[DOMAIN_REGEXP, 2]
  end
  
end
