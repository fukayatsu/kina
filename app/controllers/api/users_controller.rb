class Api::UsersController < ApplicationController
  def index
    @spot = Spot.find_by!(uuid: params[:spot_uuid])
  end
end
