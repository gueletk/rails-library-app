require 'rails_helper'

RSpec.describe "items/index", type: :view do
  before(:each) do
    assign(:items, [
      Item.create!(
        :title => "Title",
        :checked_out => false,
        :type => "Type",
        :barcode_num => 1,
        :author => "Author"
      ),
      Item.create!(
        :title => "Title",
        :checked_out => false,
        :type => "Type",
        :barcode_num => 1,
        :author => "Author"
      )
    ])
  end

  it "renders a list of items" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
  end
end
