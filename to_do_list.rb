
items = {}

def add_category(list)
  puts "What category would you like to add to your list?"
  category = gets.chomp
  list[category.to_sym] = []
end

def add_item(list)
  puts "What would you like to add to your to do list?"
  item = gets.chomp
  puts "What category do you want to add your item to?"
  category = gets.chomp
  list[category.to_sym].push(item)
end
  
def delete_item(list)
  puts "What category would you like to delete from?"
  category = gets.chomp
  puts "What item do you want to delete?"
  item = gets.chomp
  list[category.to_sym].delete(item)
 
end

def view_list(list)
  list.each do |category, item|
    puts "On your list in #{category}, you have to #{item}"
  end
end

add_category(items)

add_item(items)


add_item(items)
puts items
delete_item(items)
view_list(items)








#view the whole list
#add items to a list
#delete items from the list
# add category