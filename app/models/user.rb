class User < ApplicationRecord
  validates_presence_of :name, :email, :password
  has_secure_password
  validates :email, :uniqueness => true
  validates :name, :uniqueness => true
  has_many :runs
  has_many :games, through: :runs

  def self.from_omniauth(auth)
    # Creates a new user only if it doesn't exist
    where(email: auth.info.email).first_or_initialize do |user|
      user.name = auth.info.name
      user.email = auth.info.email
      user.password = SecureRandom.hex(12)
    end
  end
end
