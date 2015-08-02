module Fenix::Client::Model
  class Host < ::Fenix::Store::Host

    store :params, accessors: [ :system_installer, :uname, :comment ], coder: JSON

    def self.current
        return last
    end


  end
end