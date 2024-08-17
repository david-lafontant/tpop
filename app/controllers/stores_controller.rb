class StoresController < ApplicationController
  include CurrentCart
  before_action :set_cart
  def index
    @products = Product.all.order(:name)
  end
end
