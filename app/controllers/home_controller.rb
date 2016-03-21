class HomeController < ApplicationController
  def index
    if current_user
      @pools = current_user.pools
      @managed_pools = Pool.where(owner_id: current_user.id)
      @public_pools = Pool.where(is_public: true)
    end
  end
end
