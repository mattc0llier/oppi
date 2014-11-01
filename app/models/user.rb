class User < ActiveRecord::Base
	has_many :posts
	has_many :projects
	has_and_belongs_to_many :roles
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  extend FriendlyId
	friendly_id :username, use: :slugged

end
