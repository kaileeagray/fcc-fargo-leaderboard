class User < ApplicationRecord
  has_one :camper

  before_save { email.downcase! }
  enum role: [:guest, :user, :admin, :master]
  after_initialize :set_default_role, :if => :new_record?
  accepts_nested_attributes_for :camper
  # validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

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
