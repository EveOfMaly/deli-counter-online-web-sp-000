# Write your code here.
array = ["Logan", "Avi", "Spencer"]

def line(array)
  line_array = []
  
  if array.length == 0 
    puts "The line is currently empty."
  else
    array.each_with_index do |customer, index| 
        line_array.push("#{index + 1}. #{customer}")
      end 
      puts "The line is currently: #{line_array.join(" ")}"
  end
end

def take_a_number(array, new_customer)
  array.push(new_customer)
    puts "Welcome, #{new_customer}. You are number #{array.length} in line."
end


def now_serving(array)
    if array.length == 0 
      puts "There is nobody waiting to be served!"
    else
      serving = array.shift
      puts "Currently serving #{serving}."
    end
end




def interaction(array)
  counter = 0
  puts "Welcome to the Deli Counter."
  puts "Can you please put your name:"
  new_customer = gets.chomp
  while counter <= 5
 
   take_a_number(array, new_customer)
   line(array)
   now_serving(array)
   counter += 1
   interaction(array)
  end
end

interaction(array)

 