class User < ApplicationRecord
  acts_as_commontator
  belongs_to :role
  belongs_to :status
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :registerable, :lockable

  before_save :assign_status
  def assign_status
    self.status = Status.find_by("status_name = ?",'Available') if self.status.nil?

  end
  def admin?
    self.role.name == "Admin" if !self.role.blank?
  end
  def chef?
    self.role.name == "Chef" if !self.role.blank?
  end
  def customer?
    self.role.name == "Customer" if !self.role.blank?
  end
end
