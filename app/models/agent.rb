class Agent < ActiveRecord::Base

  include MessageQueue

  belongs_to :org

  before_save :defaults

  def defaults
    self.uuid = SecureRandom.uuid if self.uuid.nil? || self.uuid.strip.empty?
  end

end
