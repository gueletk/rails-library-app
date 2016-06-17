require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :title => "MyString",
      :checked_out => false,
      :type => "",
      :barcode_num => 1,
      :author => "MyString"
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input#item_title[name=?]", "item[title]"

      assert_select "input#item_checked_out[name=?]", "item[checked_out]"

      assert_select "input#item_type[name=?]", "item[type]"

      assert_select "input#item_barcode_num[name=?]", "item[barcode_num]"

      assert_select "input#item_author[name=?]", "item[author]"
    end
  end
end
