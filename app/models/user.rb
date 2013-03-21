# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  salutation :string(255)
#  address    :string(255)
#  zipcode    :string(255)
#  city       :string(255)
#  province   :string(255)
#  phone      :string(255)
#  url        :string(255)
#  longitude  :integer
#  latitude   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :address, :city, :email, :latitude, :longitude, :name, :phone,
                  :province, :salutation, :url, :zipcode, :password, :password_confirmation

  has_secure_password

  before_save { |user| user.email = email.downcase }

  validates :name, presence: true, length: { maximum: 50 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

  validates :salutation, presence: true, length: { maximum: 4 }
  validates :city, presence: true, length: { maximum: 20 }
  validates :zipcode, presence: true, length: { maximum: 10 }
end
