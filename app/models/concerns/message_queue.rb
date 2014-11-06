
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

  def topic
    @topic ||= "iqeo.#{qpath}"
  end

  def exchange
    @exchange ||= @@channel.topic topic
  end

  def queue
    @queue ||= @@channel.queue(topic).bind(exchange, routing_key: topic) 
  end

  def send_command cmd
    queue
    exchange.publish cmd, routing_key: topic
  end

end

