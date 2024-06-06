require_relative 'database'

class Level < Sequel::Model(DB[:levels])
end

class User < Sequel::Model(DB[:users])
end

class Body_part < Sequel::Model(DB[:body_parts])
end

class Exercise < Sequel::Model(DB[:exercises])
end