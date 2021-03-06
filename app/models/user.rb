class User < ApplicationRecord
  validates_presence_of :first_name, :last_name
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  def name
    "#{last_name}, #{first_name}" 
  end
end
