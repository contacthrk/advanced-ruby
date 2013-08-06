<<-doc
Exercise - Create a calculator (Level 1)
Define a method, which would evaluate basic arithmetic operations.
Example -
calculate 3, :+, 2
doc

class String
  def validate_number
    if !match(/^[+-]?\d+([.]\d+)?$/)
      puts "Input is not a number"
      exit
    end
    self
  end

  def calculate
    if !match(/.+\s.\s.+/)
      puts "Invalid format entered"
      exit
    end
    operation_array = split(" ")
    # validate the two operands
    operand1 = operation_array[0].validate_number.to_f
    operand2 = operation_array[2].validate_number.to_f
    # the operator is at index 1
    case operation_array[1]
    when '+'
      result = operand1 + operand2
    when '-'
      result = operand1 - operand2
    when '*'
      result = operand1 * operand2
    when '/'
      result = operand1 / operand2
    else
      puts "Wrong input for operator"
      exit
    end
    # return the result of the operation
    result
    end
  end
end

puts "Enter the operation (operand1 operator operand2)\nKeep spaces to separate the operands and operator"
operation = gets.chomp
result = operation.calculate
puts "#{operand1} #{operation_array[1]} #{operand2} = #{result}"