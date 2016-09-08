# GPS 2_2 

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash of grocery items

@items_list = {}
@new_list = {}

def list_creator(list, items_string)
  split_items = items_string.split(' ')
  split_items.each do |item|
  list[item] = 0
  end
  p list
end

list_creator(@items_list, "carrots apples cereal pizza")

# Method to add an item to a list
# input: item name and optional quantity
# steps:
  #call the hash and place the argumenets in the correct order
  #add the arguemnets to the hash
# output: hash of grocery items and quantity

def item_list_adder(list, items, quantity)
  list[items] = quantity
  p list
end

item_list_adder(@items_list, 'applepie',10)

# Method to remove an item from the list
# input: item
# steps:
  #item list.delete(item)
  #p modified list
# output: modified hash

def remove_item(list, item)
  list.delete(item)
  p list
end

remove_item(@items_list, 'carrots')

# Method to update the quantity of an item
# input: item and new quanitity
# steps:
  #call list item = new quantity
  #p modified list
# output: modified hash

def update(list, item, quantity)
	list[item] = quantity
	p list
end 

update(@items_list, 'applepie', 2)

# Method to print a list and make it look pretty
# input: list hash
# steps:
  #iterate through the list hash
  #p list
# output: pretty version hash

def print_list(list)
	list.each do |item, quantity|
		p "#{item}: #{quantity}"
	end 
end 

print_list(@items_list)

list_creator(@new_list,'lemonade tomatoes onions ice-cream')
item_list_adder(@new_list, 'lemonade', 2)
item_list_adder(@new_list, 'tomatoes', 3)
item_list_adder(@new_list, 'onions', 1)
item_list_adder(@new_list, 'ice-cream', 4)

remove_item(@new_list, 'lemonade')

update(@new_list, 'ice-cream', 1)

print_list(@new_list)




