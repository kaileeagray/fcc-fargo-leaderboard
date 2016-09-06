class User < ApplicationRecord
  has_one :camper_profile
  enum role: [:guest, :user, :admin, :master]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def self.no_fcc_username

  end

  def fcc_username
    camper_profile.username if camper_profile
  end
end
