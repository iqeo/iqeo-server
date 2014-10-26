class Ip4Network < ActiveRecord::Base
  has_many :ip4_addresse
  has_and_belongs_to_many :locations
end
