require_relative '../lib/fenix'

class Test < Fenix::Client::Models::Host

end

puts Test.exists?(1).inspect