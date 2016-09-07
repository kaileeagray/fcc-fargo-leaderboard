class User < ApplicationRecord
  has_one :camper
  enum role: [:guest, :user, :admin, :master]
  after_initialize :set_default_role, :if => :new_record?
  accepts_nested_attributes_for :camper


  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def self.no_camper
    User.includes(:camper).where(campers: {id: nil})
  end

  def fcc_username
    camper.username if camper
  end
end
