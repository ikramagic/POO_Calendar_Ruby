require 'bundler'
Bundler.require

class User
    attr_accessor :email, :age

    def initialize(email_def, age_def)
        @email = email_def
        @age = age_def
      end
end

binding.pry
puts "ended test"