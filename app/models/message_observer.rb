class MessageObserver < ActiveRecord::Observer
  # def after_create(message)
  #   Pusher.trigger('messages', 'new', {
  #       text: message.text,
  #       username: message.username
  #   })
  # end
  
  def after_create(message)
    MessageJobJob.perform_later(message)
  end
end