require 'rails_helper'

RSpec.describe "members/index", type: :view do
  before(:each) do
    assign(:members, [
      Member.create!(
        :name => "Name",
        :email => "Email",
        :card_num => 1,
        :pin => 2
      ),
      Member.create!(
        :name => "Name",
        :email => "Email",
        :card_num => 1,
        :pin => 2
      )
    ])
  end

  it "renders a list of members" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
