class Allocation < ActiveRecord::Base
  attr_accessible :alloc_at, :allotted_lifetime, :bandwidth_used, :dealloc_at, :realm, :req_lifetime, :username

  # association with the user model
  belongs_to :user

  default_scope order: 'allocations.created_at DESC'
end
