class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_secure_password
  attr_accessor :password_digest      
  has_many :posts, dependent: :delete_all
  has_many :comments, dependent: :delete_all


  def username
    email.split('@')[0].capitalize
  end
end
