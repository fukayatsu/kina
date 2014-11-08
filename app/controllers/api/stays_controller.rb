class Api::StaysController < ApplicationController
  protect_from_forgery with: :null_session

  def create
    spot = Spot.find_or_create_by params.permit(:uuid)
    user = User.find_or_create_by name: params[:user_name]
    if stay = user.stays.where(spot_id: spot.id, end_at: nil).first
      # staying
    else
      user.stays.where.not(spot_id: spot.id).where(end_at: nil).update_all(end_at: Time.now)
      stay = user.stays.create(spot_id: spot.id, start_at: Time.now)
    end
    render json: { stay: stay.as_json }
  end

  def delete_all
    user = User.find_by name: params[:user_name]
    user.stays.where(end_at: nil).update_all(end_at: Time.now)
    head(:ok)
  end
end
