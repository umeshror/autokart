require 'rails_helper'

RSpec.describe "brands/new", :type => :view do
  before(:each) do
    assign(:brand, Brand.new(
      :name => "MyString",
      :history => "MyText",
      :ca => "MyString"
    ))
  end

  it "renders new brand form" do
    render

    assert_select "form[action=?][method=?]", brands_path, "post" do

      assert_select "input#brand_name[name=?]", "brand[name]"

      assert_select "textarea#brand_history[name=?]", "brand[history]"

      assert_select "input#brand_ca[name=?]", "brand[ca]"
    end
  end
end
