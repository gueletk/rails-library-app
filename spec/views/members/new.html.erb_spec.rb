require 'rails_helper'

RSpec.describe "members/new", type: :view do
  before(:each) do
    assign(:member, Member.new(
      :name => "MyString",
      :email => "MyString",
      :card_num => 1,
      :pin => 1
    ))
  end

  it "renders new member form" do
    render

    assert_select "form[action=?][method=?]", members_path, "post" do

      assert_select "input#member_name[name=?]", "member[name]"

      assert_select "input#member_email[name=?]", "member[email]"

      assert_select "input#member_card_num[name=?]", "member[card_num]"

      assert_select "input#member_pin[name=?]", "member[pin]"
    end
  end
end
