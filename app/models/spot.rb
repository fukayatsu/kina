class Spot < ActiveRecord::Base
  has_many :stays
  has_many :spot_users
  has_many :users, through: :spot_users
end
