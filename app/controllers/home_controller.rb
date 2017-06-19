class HomeController < ApplicationController
  def home
    @carts = Cart.all.reverse
  end
end
