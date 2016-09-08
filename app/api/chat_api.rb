module  ChatApi
    class ApiV1 < Grape::API
        prefix :api
        
        version 'v1'
        format :json
        
        resource :messages do
            get do
                @messages = Message.all
                { messages: @messages }
            end
            
            params do
                requires :message, type: Hash do
                    requires :text, type: String
                    requires :user_name, type: String
                end
            end
            
            post do
                @message = Message.new(declared(params, include_missing: false)[:message])
                @message.save
                present message, with: Entities::Message
            end
        end
    end
end