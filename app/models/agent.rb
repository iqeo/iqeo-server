class Agent < ActiveRecord::Base

  include MessageQueue

  belongs_to :org

  def password= pass
    self.password_digest = BCrypt::Password.create pass
  end

end
