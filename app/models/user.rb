class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_roles
  has_many :roles, through: :user_roles

  has_many :journeys
  has_many :driver_journeys
  has_many :passenger_journeys

  has_many :vehicles
  
  validates :full_name, :mobile, presence: true
  validates :mobile, uniqueness: true

end
