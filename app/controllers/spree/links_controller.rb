module Spree
  class LinksController < Spree::BaseController
    helper 'spree/base'

    def index
      @categories = LinkCategory.all :include => :links
    end
  
    def show
      @category = LinkCategory.find_by_name params[:category], :include => :links
      return redirect_to :links unless @category
    end

    def accurate_title
      I18n.t 'spree_links'
    end
  end
end