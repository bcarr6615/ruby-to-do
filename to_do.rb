to_do = Hash.new
puts "This is your To Do list!"

def ask
		puts "\n"
		puts "Please type one of the following commands..."
		puts "\n"
		puts "-----'add' to add a new item to your list"
		puts "-----'remove' to remove an item from your list"
		puts "-----'clear' to clear out the entire list"
		puts "-----'show' to show your list"
		puts "-----'quit' to quit"
end

ask
input = gets.chomp

list_num = 1

while input != "quit" do

	case input
		when "add"
			puts "Add something you need to do"
			new_item = gets.chomp
			to_do[list_num.to_s.to_sym] = new_item.to_s
			list_num += 1
			puts "Added #{new_item} to your To Do list!"
			puts to_do.inspect
		when "remove"
			puts "View the list below and choose a number to remove"
			puts "\n"
			puts "Your To Do list: " + to_do.inspect
			removed_item = gets.chomp
			if to_do[removed_item.to_sym]
				to_do.delete(removed_item.to_sym)
				list_num -= 1
			else
				puts "Not on the list!"
			end 
			puts "Removed #{removed_item}"
			puts to_do.inspect
		when "clear"
			to_do = {}
			puts "Cleared the list!"
			puts to_do.inspect
		when "show"
			puts "Your To Do list:"
			puts "\n"
			puts to_do.inspect

	end

	ask
	input = gets.chomp
end

puts "Goodbye!"
puts "\n"


