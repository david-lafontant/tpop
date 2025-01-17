require 'rails_helper'

RSpec.describe 'products/show', type: :view do
  before(:each) do
    assign(:product, Product.create!(
                       name: 'Name',
                       description: nil,
                       price: '9.99',
                       poster: nil,
                       user: nil
                     ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
