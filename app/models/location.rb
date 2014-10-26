class Location < ActiveRecord::Base
  belongs_to :org
  has_and_belongs_to_many :ip4_networks
end
