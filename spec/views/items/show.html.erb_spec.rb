require 'rails_helper'

RSpec.describe "items/show", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :title => "Title",
      :checked_out => false,
      :barcode_num => 1,
      :author => "Author"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Author/)
  end
end
