class User < ActiveRecord::Base
  has_many :stays
  has_many :spot_users
  has_many :spots, through: :spot_users

  def to_param
    name
  end
end
