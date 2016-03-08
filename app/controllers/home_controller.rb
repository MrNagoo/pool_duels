class HomeController < ApplicationController
  def index
    if current_user
      @pools = current_user.pools
      @managed_pools = Pool.where(owner_id: current_user.id)
    end
  end
end
