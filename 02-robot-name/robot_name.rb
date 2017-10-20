require 'faker'

class Robot
  attr_reader :name
  def initialize
    @name = Faker::Base.regexify(/^[A-Z]{2}\d{3}$/)
  end # initialize

  def reset
    @name = Faker::Base.regexify(/^[A-Z]{2}\d{3}$/)
  end # reset
end # Robot

#Saira had a good way to do this that I got half of writen down: 
# name = [*('A'..'Z')].sample(2).join +


# Ways that I tried to generate a random string:
# NAME_REGEXP = /^[A-Z]{2}\d{3}$/
# new RandExp(/<([a-z]\w{0,20})>foo<\1>/).gen();


# pattern = '[aw-zX][123]'
# result = StringRandom.random_regex(pattern)

 # Faker::Base.regexify(/[a-z0-9]{10}/)
