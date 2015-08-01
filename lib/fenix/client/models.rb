module Fenix::Client::Models

end

path = "#{__dir__}/models"
Dir.entries(path).each do|name|
  name = name.split('.')
  Fenix::Client::Models.autoload name[0].capitalize.to_sym, "#{path}/#{name[0]}.rb" if name[1] == 'rb'
end
