class StoreController < ApplicationController
  #skip_before_action :authorize
  skip_before_action :authorize
  include CurrentCart
  before_action :set_cart  
  # need these three lines JdeB at top.....
  def index
        @products = Product.order(:title)
  end
  

end

