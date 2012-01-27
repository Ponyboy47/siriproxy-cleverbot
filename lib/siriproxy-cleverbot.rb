require 'cora'
require 'siri_objects'
require 'cleverbot'

#######
# Remember to add other plugins to the "config.yml" file if you create them!
######

class SiriProxy::Plugin::Cleverbot < SiriProxy::Plugin
def initialize(config)
end
   listen_for /Talk (to|with) Clever bot/i do
      hResponse = ask "What would you like to say to Cleverbot?"
      until hResponse =~ /Goodbye/i do
         @cleverbot = ::Cleverbot::Client.write hResponse
         hResponse = ask "#{@cleverbot['message']}"
      end
      say "Goodbye then.."
      request_completed
   end
end
