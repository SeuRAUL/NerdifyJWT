class Denylist
  include Mongoid::Document
  include Devise::JWT::RevocationStrategies::Denylist

  field :jti, type: String

  validates :jti, presence: true

  include Mongoid::Timestamps
end