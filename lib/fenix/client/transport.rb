require 'rest-client'

module Fenix::Client
  class Transport #in fact this is a json transport

    def initialize
      @url = Initialize.config['rest']
    end

    def create what
      type = what.class.canoname.to_sym
      url = route type
      what.class.create JSON.parse RestClient.post url, {type => what.as_json}
    end

    protected


    def route type
      if type == :host
        @url
      else
        "#{@url}/#{type.to_s.pluralize}"
      end
    end
  end
end