to_do = Hash.new
puts "\n"
puts 'This is your {To Do} list!'

def ask
	puts "\n"
	puts "Please type one of the following commands..."
	puts "\n"
	puts "add -- remove -- clear -- show -- quit"
end

puts "\n"
puts "Please type one of the following commands..."
puts "\n"
puts "-----'add' to add a new item to your list"
puts "-----'remove' to remove an item from your list"
puts "-----'clear' to clear out the entire list"
puts "-----'show' to show your list"
puts "-----'quit' to quit"

input = gets.chomp
list_num = 1

while input != "quit" do
	case input
		when "add"
			puts "\n"
			puts "Add something you need to do:"
			new_item = gets.chomp
			to_do[list_num.to_i] = new_item.to_s
			list_num += 1
			puts "Added #{new_item} to your To Do list!"
			puts "----------------"
			puts "Your To Do list:"
			puts "\n"
			puts to_do.inspect
			puts "----------------"
		when "remove"
			puts "\n"
			puts "View the list below and choose a number to remove:"
			puts "----------------"
			puts "Your To Do list:"
			puts "\n"
			puts to_do.inspect
			puts "----------------"
			removed_item = gets.chomp
			if to_do[removed_item.to_i]
				removed_value = to_do[removed_item.to_i]
				to_do.delete(removed_item.to_i)
				list_num -= 1
				puts "\n"
				puts "Removed #{removed_value}"
				puts "\n"
				puts "----------------"
				puts "Your To Do list:"
				puts "\n"
				puts to_do.inspect
				puts "----------------"
			else
				puts "Not on the list!"
			end 
		
		when "clear"
			puts "\n"
			to_do.clear
			puts "Cleared the list!"
			list_num = 1
			puts to_do.inspect
		when "show"
			puts "\n"
			puts "----------------"
			puts "Your To Do list:"
			puts "\n"
			puts to_do.inspect
			puts "----------------"
	end

	ask
	input = gets.chomp
end
puts "\n"
puts "Goodbye!"
puts "\n"


