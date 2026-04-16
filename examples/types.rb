my_bool = true
my_int = 10
my_float = 10.5
my_complex = Complex(-1, 10)
my_string = 'foo'
my_array = []
my_map = {}
my_function = proc {}
my_pointer_like = Object.new
[my_bool, my_int, my_float, my_complex, my_string, my_array, my_map, my_function, my_pointer_like].each { |v| v }
