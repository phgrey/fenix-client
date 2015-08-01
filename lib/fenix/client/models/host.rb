require_relative 'event'

module Fenix::Client::Models
  class Host < Base
    has_many :events, class_name: 'Fenix::Client::Models::Events'
  end
end