class HomeController < ApplicationController
  def index
    @num_items = Item.count
    @num_manufacturers = 0
    @num_vendors = Distributor.count
  end
end
