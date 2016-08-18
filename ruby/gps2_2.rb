# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split the string
  # create hash and add each item to the hash
  # set default quantity
  # return hash
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]


# iterate over given string in method
def make_list(string)
  shopping = string.split
  food = {}
  shopping.each do |item|
  food[item] = 1
  end
  food
end

# call method on string and add to new variable 
new_list = make_list("cereal milk peanuts")

# Method to add an item to a list
# input: item name and optional quantity
# steps: create new method with three parameters
  # set each parameter to its corresponding location in the hash 
  # return hash 
# output: an added key-value pair to the list 

# Add an new item to a list 
def add_an_item(list, item, *value)
  list[item] = value
  p list
end 

p add_an_item(new_list, "bananas")


new2_list = add_an_item(new_list, "bananas", 1)

# Method to remove an item from the list
# input: 
  # use .delete(key) in the method 
  # method will have two parameters: newer_list and key
  # newer_list.delete(key)
# steps:
# output:


def delete_an_item(list, item)
  list.delete(item)
  list
end 

new3_list = delete_an_item(new2_list, "peanuts")

# Method to update the quantity of an item
# input: the hash list, the item, and the new value
# => list(item) = value
# => using the item in the list just changing the value
# => three parameters: the hash list, the item, and the new value
# output: a list with an item's value updated

def update_an_item(list, item, add_value)
  list[item] = add_value + 1
  list
end 

new4_list = update_an_item(new3_list, "milk", 2)

# Method to print a list and make it look pretty
# input: parameter would be the hash list 
# steps: print with "=========="
# => between each pair print "=======" and "      "
# output: new a pretty hash

def pretty_list(hash_list)
    hash_list.each do |pair|
      puts "==========="
      p pair
      puts "                  "
    end
end

p pretty_list(new4_list)



















