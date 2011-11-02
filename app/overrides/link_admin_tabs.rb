Deface::Override.new(:virtual_path => "layouts/admin",
                     :name => 'link_admin_tabs',
                     :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                     :text =>  %[<%=  tab(:link_categories, :label => :link_categories_admin)  %>])