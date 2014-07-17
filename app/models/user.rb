class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :profile
  has_many :albums
  acts_as_followable
    acts_as_follower
  def admin!
   self.admin = true
   self.save!    
  end 	

end
