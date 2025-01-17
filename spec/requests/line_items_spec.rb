require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/line_items', type: :request do
  # This should return the minimal set of attributes required to create a valid
  # LineItem. As you add validations to LineItem, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      LineItem.create! valid_attributes
      get line_items_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      line_item = LineItem.create! valid_attributes
      get line_item_url(line_item)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_line_item_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'renders a successful response' do
      line_item = LineItem.create! valid_attributes
      get edit_line_item_url(line_item)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new LineItem' do
        expect do
          post line_items_url, params: { line_item: valid_attributes }
        end.to change(LineItem, :count).by(1)
      end

      it 'redirects to the created line_item' do
        post line_items_url, params: { line_item: valid_attributes }
        expect(response).to redirect_to(line_item_url(LineItem.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new LineItem' do
        expect do
          post line_items_url, params: { line_item: invalid_attributes }
        end.to change(LineItem, :count).by(0)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post line_items_url, params: { line_item: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested line_item' do
        line_item = LineItem.create! valid_attributes
        patch line_item_url(line_item), params: { line_item: new_attributes }
        line_item.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the line_item' do
        line_item = LineItem.create! valid_attributes
        patch line_item_url(line_item), params: { line_item: new_attributes }
        line_item.reload
        expect(response).to redirect_to(line_item_url(line_item))
      end
    end

    context 'with invalid parameters' do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        line_item = LineItem.create! valid_attributes
        patch line_item_url(line_item), params: { line_item: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested line_item' do
      line_item = LineItem.create! valid_attributes
      expect do
        delete line_item_url(line_item)
      end.to change(LineItem, :count).by(-1)
    end

    it 'redirects to the line_items list' do
      line_item = LineItem.create! valid_attributes
      delete line_item_url(line_item)
      expect(response).to redirect_to(line_items_url)
    end
  end
end
