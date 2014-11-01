
Rails.logger.info 'Connecting MQ connection'
MessageQueue::connect

at_exit do
  Rails.logger.info 'Disconnecting MQ'
  MessageQueue::disconnect
end

