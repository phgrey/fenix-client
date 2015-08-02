module Fenix::Client
  class Collector
    def initialize
      host = Model::Host.current.params
      @installer = Installer.const_get(host.system_installer.capitalize)
      @installer.set_host_params(host)
    end
  end
end