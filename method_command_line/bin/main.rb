require_relative '../lib/prompt.rb'

print "Enter the method name: "
method_name = gets.chomp
puts "Enter a line of code:"
line_code = gets
prompt = Prompt.new
Prompt.add_method(method_name)
prompt.send(method_name, line_code)