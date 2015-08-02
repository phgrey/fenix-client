module Fenix::Client::Installer
  class Apt
    class << self
      def packages
        `apt --installed list`
      end

    end
  end
end