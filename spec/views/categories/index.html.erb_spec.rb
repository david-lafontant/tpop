require 'rails_helper'

RSpec.describe 'categories/index', type: :view do
  before(:each) do
    assign(:categories, [
             Category.create!(
               category: 'Category'
             ),
             Category.create!(
               category: 'Category'
             )
           ])
  end

  it 'renders a list of categories' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Category'.to_s), count: 2
  end
end
