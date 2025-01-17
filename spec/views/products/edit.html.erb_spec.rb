require 'rails_helper'

RSpec.describe 'products/edit', type: :view do
  let(:product) do
    Product.create!(
      name: 'MyString',
      description: nil,
      price: '9.99',
      poster: nil,
      user: nil
    )
  end

  before(:each) do
    assign(:product, product)
  end

  it 'renders the edit product form' do
    render

    assert_select 'form[action=?][method=?]', product_path(product), 'post' do
      assert_select 'input[name=?]', 'product[name]'

      assert_select 'input[name=?]', 'product[description]'

      assert_select 'input[name=?]', 'product[price]'

      assert_select 'input[name=?]', 'product[poster]'

      assert_select 'input[name=?]', 'product[user_id]'
    end
  end
end
