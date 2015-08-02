require 'active_support/dependencies'
require 'yaml'
require 'fenix/store'

module Fenix
  module Client
    class Initialize
      class <<self
        def autoload_dirs
          path = __dir__.split('/')
          # puts path.slice(0, path.count - 2).join('/')
          ActiveSupport::Dependencies.autoload_paths << path.slice(0, path.count - 2).join('/')
        end

        def config
          @config ||= YAML::load(IO.read('config.yml'))
        end

        def connect_db
          ::Fenix::Store::Base.establish_connection(config['db'])
        end

        def start
          autoload_dirs
          connect_db
        end

      end
    end
  end
end

