class User < ApplicationRecord
  has_many :webauthn_credentials, dependent: :destroy

  validates :webauthn_id, uniqueness: true

  # Devise setting
  devise :database_authenticatable, :recoverable, :rememberable, :validatable, :trackable, :confirmable, :lockable, :registerable
end
