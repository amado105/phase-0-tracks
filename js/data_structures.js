var colors = ["blue", "green", "red", "white"];
var names = ["Ed", "Bob", "John", "Jose"];

colors.push("black");
names.push("Mike");

var horse = {};
for (var i = 0; i < colors.length; i++){
horse[names[i]] = colors[i];
} 

console.log(horse);

function Car(make, model, year){
this.make = make;
this.model = model;
this.year = year;

this.tires = function() { console.log("Spin out!"); };
}

console.log("Let's build a car!");
var new_car = new Car("toyota", "corolla", 2017);

console.log(new_car);
new_car.tires();

var new_car2 = new Car("Honda", "civic", 1982);
console.log(new_car2);
new_car2.tires();

var new_car3 = new Car("Tesla", "mark 1", 2014)
console.log(new_car3);
new_car3.tires();