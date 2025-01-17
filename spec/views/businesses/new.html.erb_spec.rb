require 'rails_helper'

RSpec.describe 'businesses/new', type: :view do
  before(:each) do
    assign(:business, Business.new(
                        business_name: 'MyString',
                        first_name: 'MyString',
                        last_name: 'MyString',
                        phone: 'MyString',
                        adress1: 'MyString',
                        adress2: 'MyString',
                        city: 'MyString',
                        zipcode: 'MyString',
                        state: 'MyString',
                        country: 'MyString',
                        description: nil,
                        user: nil
                      ))
  end

  it 'renders new business form' do
    render

    assert_select 'form[action=?][method=?]', businesses_path, 'post' do
      assert_select 'input[name=?]', 'business[business_name]'

      assert_select 'input[name=?]', 'business[first_name]'

      assert_select 'input[name=?]', 'business[last_name]'

      assert_select 'input[name=?]', 'business[phone]'

      assert_select 'input[name=?]', 'business[adress1]'

      assert_select 'input[name=?]', 'business[adress2]'

      assert_select 'input[name=?]', 'business[city]'

      assert_select 'input[name=?]', 'business[zipcode]'

      assert_select 'input[name=?]', 'business[state]'

      assert_select 'input[name=?]', 'business[country]'

      assert_select 'input[name=?]', 'business[description]'

      assert_select 'input[name=?]', 'business[user_id]'
    end
  end
end
