class CamperProfile < ApplicationRecord
  belongs_to :user , optional: true

  def self.no_user
    CamperProfile.includes(:user).where(users: {id: nil})
  end

  def fcc_url
    "https://www.freecodecamp.com/#{self.username}"
  end
end
