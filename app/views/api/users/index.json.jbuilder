json.users do
  json.array! @spot.spot_users do |spot_user|
    json.(spot_user.user, :id, :name, :created_at, :updated_at)
    json.(spot_user, :stay_count)
    json.active @spot.stays.where(user_id: spot_user.user_id, end_at: nil).present?
  end
end
