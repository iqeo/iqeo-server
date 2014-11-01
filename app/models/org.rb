class Org < ActiveRecord::Base

  include MessageQueue

  has_many :locations

  before_save :defaults
  
  def defaults
    self.qtopic ||= self.name.downcase.strip.gsub(/[ _]/, '-').gsub(/[^\w-]/, '')
  end

end

