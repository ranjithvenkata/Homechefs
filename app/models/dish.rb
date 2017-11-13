class Dish < ApplicationRecord
  has_many :orders, dependent: :destroy
  belongs_to :user
  acts_as_commontable
  mount_uploader :avatar, AvatarUploader
  validates :dish_name, :presence => :true
  validates :time_of_last_order, :presence => :true
  validates :maxOrder, :presence => :true
  validates :ready_by, :presence => :true
  validates :price, :presence => :true




end
