require 'rails_helper'

RSpec.describe "brands/show", :type => :view do
  before(:each) do
    @brand = assign(:brand, Brand.create!(
      :name => "Name",
      :history => "MyText",
      :ca => "Ca"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Ca/)
  end
end
