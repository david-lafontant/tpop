require 'rails_helper'

RSpec.describe 'products/new', type: :view do
  before(:each) do
    assign(:product, Product.new(
                       name: 'MyString',
                       description: nil,
                       price: '9.99',
                       poster: nil,
                       user: nil
                     ))
  end

  it 'renders new product form' do
    render

    assert_select 'form[action=?][method=?]', products_path, 'post' do
      assert_select 'input[name=?]', 'product[name]'

      assert_select 'input[name=?]', 'product[description]'

      assert_select 'input[name=?]', 'product[price]'

      assert_select 'input[name=?]', 'product[poster]'

      assert_select 'input[name=?]', 'product[user_id]'
    end
  end
end
