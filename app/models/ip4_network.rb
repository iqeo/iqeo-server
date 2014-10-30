class Ip4Network < ActiveRecord::Base
  has_many :ip4_addresses
  has_and_belongs_to_many :locations
end
