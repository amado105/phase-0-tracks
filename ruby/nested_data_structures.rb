# design and build a nested data structure to represent a real-world construct. 
# You can choose the construct: Is it a highway full of cars full of people? 
# A classroom full of desks full of supplies? 
# A fashion show with multiple runways featuring multiple models? 
# Build something that will use a mix of hashes and arrays.

# Once you've built it, print a few individual pieces of deeply nested data from the structure, 
# showing that you know how to use multiple indexes or hash keys (or both) to access nested items. 
# Try to demonstrate a few different types of access.



ice_and_fire = {
	westerosi_houses: {
		Stark: {
			stark_info: {
				living_members: 4,
				stark_home: "Winterfell" 
			},
			stark_vassals: [
				"Mormonts",
				"Umbers",
				"Manderlys"
			]
		},
		Targaryen: {
			targaryen_info: {
				living_members: 2,
				targaryen_home: "Dragonstone" 
			},
			targaryen_vassals: [
				"Tyrells",
				"Martells",
			]
		},
	},
	free_cities: {
		Braavos: "the Secret City",
		braavos_info: {
			nickname: " city of a hundred isles",
			establishments: [
				"House of the Undying",
				"Iron Bank",
				"Titan of Bravos"
			]
		}
	}
}

p ice_and_fire[:westerosi_houses][:Stark][:stark_vassals][1]
p ice_and_fire[:free_cities][:braavos_info][:establishments]
p ice_and_fire[:westerosi_houses][:Targaryen][:targaryen_info][:living_members]