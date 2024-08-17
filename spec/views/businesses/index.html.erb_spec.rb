require 'rails_helper'

RSpec.describe "businesses/index", type: :view do
  before(:each) do
    assign(:businesses, [
      Business.create!(
        business_name: "Business Name",
        first_name: "First Name",
        last_name: "Last Name",
        phone: "Phone",
        adress1: "Adress1",
        adress2: "Adress2",
        city: "City",
        zipcode: "Zipcode",
        state: "State",
        country: "Country",
        description: nil,
        user: nil
      ),
      Business.create!(
        business_name: "Business Name",
        first_name: "First Name",
        last_name: "Last Name",
        phone: "Phone",
        adress1: "Adress1",
        adress2: "Adress2",
        city: "City",
        zipcode: "Zipcode",
        state: "State",
        country: "Country",
        description: nil,
        user: nil
      )
    ])
  end

  it "renders a list of businesses" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Business Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("First Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Last Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Phone".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Adress1".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Adress2".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("City".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Zipcode".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("State".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Country".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
