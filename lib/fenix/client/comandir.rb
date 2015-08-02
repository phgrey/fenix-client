require "thor"

module Fenix
  module Client
    class Comandir < ::Thor

      desc 'register COMMENT', 'perform initial registration on a remote server with COMMENT'
      def register comment = nil
        puts comment
      end


    end
  end
end

