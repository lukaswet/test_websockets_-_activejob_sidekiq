class MessageJobJob < ApplicationJob
  queue_as :default

  def perform
    sleep 5
    Event.create(type_model: message.class.to_s, model_id: message.id)
  end
end
