class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  has_many :posts

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


    validates :email,:password,:password_confirmation,:first_name,:last_name, presence:true 

    def full_name 
    	last_name.upcase + ", "  + first_name.upcase
    end
 end




