class StoresController < ApplicationController
  def index
    @products = Product.all.order(:name)
  end
end
