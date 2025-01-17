require 'rails_helper'

RSpec.describe 'categories/show', type: :view do
  before(:each) do
    assign(:category, Category.create!(
                        category: 'Category'
                      ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Category/)
  end
end
