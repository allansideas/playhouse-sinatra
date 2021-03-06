require 'playhouse/sinatra/command_builder'

module Playhouse
  module Sinatra
    class ApiBuilder
      def self.build_sinatra_api(api, sinatra_app)
        command_builder = Playhouse::Sinatra::CommandBuilder.new(api,sinatra_app)
        api.commands.inject([]) { |commands, command| commands << command_builder.build_command(command) }
      end
    end
  end
end