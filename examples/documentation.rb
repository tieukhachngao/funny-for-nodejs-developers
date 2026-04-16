# Person is the structure of a person.
class Person
  def initialize(name)
    @name = name
  end

  attr_accessor :name
end

person = Person.new('bob')
puts person.name
