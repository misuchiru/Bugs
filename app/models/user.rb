class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts
  
  def email_required?
		false
  end

  def admin?
  	is_admin
  end
end
