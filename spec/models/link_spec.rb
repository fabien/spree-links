require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Link do
  before(:each) do
    LinkCategory.create! :name => 'foo'

    @valid_attributes = {
      :link_category_id => 1,
      :link => "value for link",
      :link => "value for link",
      :position => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Link.create!(@valid_attributes)
  end

  it "should belong to a category" do
    link = Link.create(@valid_attributes)
    link.link_category.should_not be_nil
  end

  it "should require a category" do
    link = Link.create(@valid_attributes.except(:link_category_id))
    link.should have(1).error_on(:link_category_id)
  end

  it "should require a link" do
    link = Link.create(@valid_attributes.except(:link))
    link.should have(1).error_on(:link)
  end

  it "should require a link" do
    link = Link.create(@valid_attributes.except(:link))
    link.should have(1).error_on(:link)
  end

  it "should act like a list" do
    link = Link.create(@valid_attributes)
    Link.create(@valid_attributes)
    
    link.move_to_bottom
    link.position.should eql(2)
  end
end
