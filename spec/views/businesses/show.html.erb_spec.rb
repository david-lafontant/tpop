require 'rails_helper'

RSpec.describe 'businesses/show', type: :view do
  before(:each) do
    assign(:business, Business.create!(
                        business_name: 'Business Name',
                        first_name: 'First Name',
                        last_name: 'Last Name',
                        phone: 'Phone',
                        adress1: 'Adress1',
                        adress2: 'Adress2',
                        city: 'City',
                        zipcode: 'Zipcode',
                        state: 'State',
                        country: 'Country',
                        description: nil,
                        user: nil
                      ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Business Name/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Adress1/)
    expect(rendered).to match(/Adress2/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Zipcode/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
