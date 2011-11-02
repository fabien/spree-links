require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe LinksController do

  it "should response to index" do
    LinkCategory.should_receive(:all).and_return(:categories)

    get :index

    assigns(:categories).should eql(:categories)
    response.should be_success
  end

end
