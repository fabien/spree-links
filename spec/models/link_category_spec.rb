require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe LinkCategory do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :position => 1
    }
  end

  it "should create a new instance given valid attributes" do
    LinkCategory.create!(@valid_attributes)
  end

  it "should have links" do
    cat = LinkCategory.create!(@valid_attributes)
    cat.links.should_not be_nil
  end

  it "should require a name" do
    category = LinkCategory.create(@valid_attributes.except(:name))
    category.should have(1).error_on(:name)
  end

  it "should act like a list" do
    category = LinkCategory.create(@valid_attributes.merge(:name => 'test'))
    LinkCategory.create(@valid_attributes)
    
    category.move_to_bottom
    category.position.should eql(2)
  end

  it "should require a unique name" do
    LinkCategory.create(@valid_attributes)
    category = LinkCategory.create(@valid_attributes)
    category.should have(1).error_on(:name)
  end
end
