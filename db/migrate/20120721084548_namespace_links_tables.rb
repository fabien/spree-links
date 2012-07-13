class NamespaceLinksTables < ActiveRecord::Migration
  def change
    rename_table :links, :spree_links
    rename_table :link_categories, :spree_link_categories
  end
end
