class Org < ActiveRecord::Base

  has_many :locations
  has_many :agents

  before_save :defaults
  
  def defaults
    self.qtopic = self.name.downcase.strip.gsub(/[ _]/, '-').gsub(/[^\w-]/, '') if self.qtopic.nil? || self.qtopic.strip.empty?
  end

end

