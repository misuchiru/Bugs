class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts
  has_many :trips
  has_many :trip_events
  
  def email_required?
		false
  end

  def admin?
  	is_admin
  end
end
