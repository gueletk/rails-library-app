require 'rails_helper'

RSpec.describe "items/new", type: :view do
  before(:each) do
    assign(:item, Item.new(
      :title => "MyString",
      :checked_out => false,
      :barcode_num => 1,
      :author => "MyString"
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input#item_title[name=?]", "item[title]"

      assert_select "input#item_checked_out[name=?]", "item[checked_out]"

      assert_select "input#item_barcode_num[name=?]", "item[barcode_num]"

      assert_select "input#item_author[name=?]", "item[author]"
    end
  end
end
