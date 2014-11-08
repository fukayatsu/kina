class Stay < ActiveRecord::Base
  belongs_to :user
  belongs_to :spot

  after_create :update_spot_user

  def update_spot_user
    spot_user = SpotUser.find_or_create_by(spot_id: self.spot_id, user_id: self.user_id)
    spot_user.increment(:stay_count, 1).save
  end
end
