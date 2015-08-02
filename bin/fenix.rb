#!/usr/bin/ruby
require_relative '../lib/fenix/client'
Fenix::Client::Comandir.start(ARGV)
# puts __dir__