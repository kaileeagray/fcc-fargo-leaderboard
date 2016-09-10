class Camper < ApplicationRecord
  belongs_to :user , optional: true

  before_save { username.downcase! }

  validates :username, presence: true, length: { maximum: 100 },
                    uniqueness: { case_sensitive: false }

  def self.no_user
    Camper.includes(:user).where(users: {id: nil})
  end

  def fcc_url
    "https://www.freecodecamp.com/#{self.username}"
  end
end
