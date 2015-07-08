class User < ActiveRecord::Base
  has_one :profile, :class_name => "User", :foreign_key => "profile_id"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
