
module MessageQueue

  extend ActiveSupport::Concern

  def self.connect
    @@connection = Bunny.new
    @@connection.start
    @@channel = @@connection.create_channel
  end

  def self.disconnect
    @@connection.close
  end

  def create_exchange
    @exchange = @@channel.topic "iqeo.#{qtopic}"
  end

end

