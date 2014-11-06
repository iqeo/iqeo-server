class Agent < ActiveRecord::Base

  include MessageQueue

  belongs_to :org

  before_save :defaults
  
  def defaults
    self.qtopic = self.name.downcase.strip.gsub(/[ _]/, '-').gsub(/[^\w-]/, '') if self.qtopic.nil? || self.qtopic.strip.empty?
  end

  def password= pass
    self.password_digest = BCrypt::Password.create pass
  end

  def qpath
    "#{org.qpath}.#{qtopic}"
  end

end
