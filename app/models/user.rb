class User < ActiveRecord::Base
 belongs_to :role
 devise :database_authenticatable, :rememberable, :trackable, :timeoutable
 # attr_accessor :username, :password, :password_confirmation, :remember_me
 validates :username, uniqueness: true
 validates_presence_of :username, :full_name
end
