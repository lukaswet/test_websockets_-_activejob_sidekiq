class MessageJobJob < ApplicationJob
  queue_as :default

  def perform
    sleep 5
  end
end
