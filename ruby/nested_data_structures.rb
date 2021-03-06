westeros = {
    north: {
        ruling_house: 'Stark',
        vassals_holding_pop: {
            Umbers: ['Last Hearth', 600],
            Manderlys: ['White Harbor', 1100]
        },
        enemies: [
            'Lannister', 
            'Bolton',
            'White-walkers'
        ],
        family: {
        	Sansa: 19,
        	Jon: 23, 
        	Arya: 16,
        	Brandon: 14
        },
    },
    dorne: {
        ruling_house: 'Martell',
        vassal_holding_pop: {
            Dayne: ['Starfall', 800],
            Blackmont: ['Blackmont', 900]
        },
        enemies: [
            'Lannister', 
            'Baratheon',
            'White-walkers'
        ],
        family: {
        	Elaria: 19,
        	Elia: 23 
        },
    },
    riverlands: {
        ruling_house: 'Tully',
        vassal_holding_pop: {
            Blackwood: ['Raventree', 1000],
            Bracken: ['Stonehedge', 700]
        },
        enemies: [
            "Lannister", 
            "Frey",
            "Bolton"
        ],
        family: {
        	Blackfish: 62,
        	Edmund: 38 
        },
    }
}

p westeros[:north][:enemies][0]
#=> "Lannister"

p westeros[:dorne][:ruling_house]
#=> "Martell"

p westeros[:riverlands][:family]
#=> {:Blackfish=>62, :Edmund=>38}

westeros[:dorne][:family][:Elaria] = 20
p westeros[:dorne][:family]
#=> {:Elaria=>20, :Elia=>23}

p westeros[:north][:family].values
#=> [19, 23, 16, 14]


