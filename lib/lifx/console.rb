require "pry"
require "lifx"
require "lifx/console/version"
require "lifx/console/identify"

module LIFX
  class Console
    class << self
      def client
        @client ||= LIFX::Client.lan.tap do |c|
          c.extend(LIFX::Colors)
          c.extend(Commands)
        end
      end

      def start
        begin
          client.discover!
        rescue LIFX::Client::DiscoveryTimeout
          $stderr.puts("Could not find any LIFX devices.")
          exit 1
        end
        client.pry
      end
    end

    module Commands
      def identify(candidates = lights)
        Identify.new.run(candidates)
      end
    end
  end
end
