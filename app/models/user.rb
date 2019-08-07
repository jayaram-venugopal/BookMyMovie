class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  enum gender: [ :male, :female, :prefer_not_to_disclose]

  validates_presence_of :email, :name, on: :create, message: "can't be blank"
end
