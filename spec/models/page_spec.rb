require File.dirname(__FILE__) + '/../spec_helper'

describe Page do
  dataset :pages
  test_helper :validations

  # describe 'validations' do
  #   before :each do
  #     @page = @model = Page.new(page_params)
  #   end
  # 
  #   it 'should validate uniqueness of' do
  #     @page.parent = pages(:parent)
  #     assert_invalid :slug, 'this slug is already in use by a sibling of this page', 'child', 'child-2', 'child-3'
  #     assert_valid :slug, 'child-4'
  #   end
  # end
  
  it "should create a dev copy" do
    @page = pages(:first)
    @page.should be_published
    @page.dev_copy.should be_nil
    
    @page.status = Status[:draft]
    @page.save
    @page.reload.dev_copy.should_not be_nil
  end
  
  
end