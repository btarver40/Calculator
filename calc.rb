#take the first number
# take modifier
# take the last number
# puts result
# error checking
# user input and modifiers should be checked for proper input type
# the result should set first_number and allow for another modifier and last number so result continues to build until the user decides to clear the calculator
# make + - * / work
# make clear work

def menu
  puts "______Calculator_______"
  puts "\t1) Enter first number"
  puts "\t2) Enter modifier"
  puts "\t3) Enter second number"
  puts "\t4) The result is:"
  return gets.strip.to_i
end




def first_number
  puts "input first number"
  @first_number = gets.strip # we need to do .strip because
  if @first_number == "clear"
    first_number
  elsif @first_number.to_i
    @first_number.to_i
    modifier
  elsif @first_number.to_i
    puts "Start over"
    first_number
  end
end

def modifier
  puts "input modifier"
  @modifier = gets.chomp
  case @modifier
  when "+", "-", "/", "*"
      puts "Thanks!"
      second_number
    else
      puts "not right!"
      modifier
      #this is calling the METHOD modifier
      #so that if you input anything other than + - /, it will take you back
      #and make you do it again
  # when "clear"
  end
end


def second_number
  puts "input second number"
  @second_number = gets.to_i
  # case @second_number
  if @second_number < 10
    puts "Please choose another number"
    second_number
  else
    puts "Great!"
    display_answer
  end
end


def display_answer
  @display_answer = @first_number.to_i.public_send(@modifier.to_s, @second_number.to_i)
  puts "Your answer is #{@display_answer}:"
end
# first_number.public_send()




  while true
    case menu
      when 1
        first_number
      when 2
        modifier
      when 3
        second_number
      when 4
        display_answer
      else
        puts "Invalid selection"
    end
  end
