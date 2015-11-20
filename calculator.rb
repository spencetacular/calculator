
# calculator

#@equation = {first: '0', operator: '', second: '0'}
# def user_inpit
#   puts 'Enter an quation ex 1 * 3, or "exit" to quit'
#   gets
  
# end
def first_number
  puts 'type "exit" to quit'
  puts 'Enter the first number:'
  gets.strip
end

def operator 
  puts 'type "exit" to quit'
  puts 'Enter the operator'
  puts '+ - / *'
  op = gets.strip.to_sym
  if check_operator_length(op) == true && check_operator_symbol(op) == true

    return op
  else 
    operator
  end
end

def second_number
  puts 'type "exit" to quit'
  puts "Enter second number:"
  gets.strip
end
#check for letters in input, not curently working
# def check_valid_number(num)
#   new_num = num.split('')

#   ("a".."z").to_a.each do |letter|

#     new_num.include == a ? letter ubb : bytuv 

#   end
  
# end
# check_valid_number("ankfkf")

def check_operator_symbol(symbol)
  
  symbol_array = ['+', '-', '*', '/']
    
    symbol_array.each do |sym|
      if symbol.to_s.split('').include?(sym) == true
          return true
          break
        else
          return false
      end
    end
end


def check_operator_length(symbol)
  symbol.to_s
  
  if symbol.length != 1
    puts "Error! please enter + - / * "
    return false
  else
    return true
  end

end

def check_for_exit(num)

  if num == 'exit'
    'Good bye'
    exit 0
  else
    num = num.to_i
    
  end

end
def calculate
  
  number1 = check_for_exit(first_number)
  math_to_do = operator
  number2 = check_for_exit(second_number)
  
  result = number1.send(math_to_do,number2)


  puts  "#{number1} #{math_to_do} #{number2} =  #{result}"
   
end

def division (num, dem)
  if dem == 0
    puts 'You can not divide by zero'

  else
    num.to_f / dem.to_f
  end
end


#calculate

#loop through the calculator #
def run_calculator

    while calculate != "exit"
      calculate

    end

end

run_calculator





#I got a little ambitious and tried to build a more complicate version first

# def user_input
#   puts 'Enter an equation ex. 1+1'
#   string = gets.strip
#   inputArray = string.split('')
 
# end

# def analize_array(array)
#  arrray.include ? '+'  

# end

# analize_array(user_input)

# find the intergets and the math signs from input

