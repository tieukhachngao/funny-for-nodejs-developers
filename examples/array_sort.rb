Person = Struct.new(:name, :last, :age) do
  def to_s
    "{#{name} #{last} #{age}}"
  end
end

def fmt(values)
  "[#{values.join(' ')}]"
end

ints = [1, 3, 5, 9, 4, 2, 0]
puts fmt(ints.sort)
puts fmt(ints.sort.reverse)

strings = %w[a d z b c y]
puts fmt(strings.sort)
puts fmt(strings.sort.reverse)

people = [
  Person.new('Li', 'L', 8),
  Person.new('Json', 'C', 3),
  Person.new('Zack', 'W', 15),
  Person.new('Yi', 'M', 2)
]
puts fmt(people.sort_by(&:age))
puts fmt(people.sort_by(&:age).reverse)
