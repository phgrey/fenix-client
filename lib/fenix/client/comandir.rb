require "thor"

module Fenix
  module Client
    class Comandir < ::Thor


      desc 'register COMMENT', 'perform initial registration on a remote server with COMMENT'
      def register comment = ''
       r = transport.create Model::Host.new({
            :title => [`whoami`.strip,`cat /etc/hostname`.strip].join('@'),
            :system_installer => 'apt',
            :comment => comment,
            :uname => `uname -a`
        })
       puts r.inspect
      end

    protected

      def transport
        @transport ||= Transport.new
      end

    end
  end
end

