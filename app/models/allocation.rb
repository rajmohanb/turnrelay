class Allocation < ActiveRecord::Base
  attr_accessible :alloc_at, :allotted_lifetime, :bandwidth_used, :dealloc_at, :realm, :req_lifetime, :username

  # association with the user model
  belongs_to :user

  # some validations
  validates :user_id, presence: true
  validates :username, presence: true
  validates :realm, presence: true

  default_scope order: 'allocations.created_at DESC'
end
