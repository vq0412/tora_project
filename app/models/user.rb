class User < ApplicationRecord
	has_many :reviews,dependent: :destroy
	has_many :kuchikomis,dependent: :destroy
	has_many :apps
	mount_uploader :avatar, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  validates :name,presence: true,uniqueness: true
end
