flowers = []
p flowers

flowers.push("daisies", "roses", "sunflowers", "tulips", "lilies")
p flowers

flowers.delete_at(2)
p flowers

flowers.insert(2,"carnations")
p flowers

flowers.shift
p flowers

p "True or false? Does this list include roses? And the answer is... #{flowers.include?("roses")}"

colors = ["blue", "red", "yellow"]

colorful_flowers = flowers + colors
p colorful_flowers