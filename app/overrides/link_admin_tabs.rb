Deface::Override.new(:virtual_path => "spree/layouts/admin",
                     :name => 'link_admin_tabs',
                     :insert_bottom => "[data-hook='admin_tabs']",
                     :text =>  %[<%=  tab(:link_categories, :label => :link_categories_admin)  %>])