class Camper < ApplicationRecord
  belongs_to :user , optional: true

  def self.no_user
    Camper.includes(:user).where(users: {id: nil})
  end

  def fcc_url
    "https://www.freecodecamp.com/#{self.username}"
  end
end
