class Pool < ActiveRecord::Base
  belongs_to :owner, class_name: "User"
  has_many :pool_memberships
  has_many :members, through: :pool_memberships, source: :user
end
