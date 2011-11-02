class CreateLinks < ActiveRecord::Migration
  def self.up
    create_table :links do |t|
      t.integer :link_category_id
      t.string  :url
      t.string  :title
      t.text    :description
      t.integer :position

      t.timestamps
    end
  end

  def self.down
    drop_table :links
  end
end
