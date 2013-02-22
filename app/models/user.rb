class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :max_allocs, :max_concur_allocs, :realm, :username, :turn_secret
  attr_accessible :def_lifetime, :max_bandwidth
  attr_accessible :first_name, :last_name
  
  # association with the allocations model
  has_many :allocations, dependent: :destroy
end
