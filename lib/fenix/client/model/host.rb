
module Fenix::Client::Model
  class Host < ::Fenix::Store::Host

    def self.current
        return last
    end


  end
end