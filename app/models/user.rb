class User < ApplicationRecord
  # Devise setting
  devise :database_authenticatable, :recoverable, :rememberable, :validatable, :trackable, :confirmable, :lockable, :registerable
end
