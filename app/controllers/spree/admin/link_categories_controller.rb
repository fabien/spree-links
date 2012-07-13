module Spree
  module Admin
    class LinkCategoriesController < Admin::ResourceController
  
      def update_positions
        params[:positions].each do |id, index|
          LinkCategory.update_all(['position=?', index], ['id=?', id])
        end

        respond_to do |format|
          format.js  { render :text => 'Ok' }
        end
      end
  
    end
  end
end
