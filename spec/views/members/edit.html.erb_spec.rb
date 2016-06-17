require 'rails_helper'

RSpec.describe "members/edit", type: :view do
  before(:each) do
    @member = assign(:member, Member.create!(
      :name => "MyString",
      :email => "MyString",
      :card_num => 1,
      :pin => 1
    ))
  end

  it "renders the edit member form" do
    render

    assert_select "form[action=?][method=?]", member_path(@member), "post" do

      assert_select "input#member_name[name=?]", "member[name]"

      assert_select "input#member_email[name=?]", "member[email]"

      assert_select "input#member_card_num[name=?]", "member[card_num]"

      assert_select "input#member_pin[name=?]", "member[pin]"
    end
  end
end
