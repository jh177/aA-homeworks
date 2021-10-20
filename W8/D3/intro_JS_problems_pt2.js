function titleize(names, cb) {
  let newnames = names.map(el => `Mx. ${el} Jingleheimer Schmidt`);
  newnames.forEach(el => cb(el))
}

function printCallback(el) {
  console.log(el)
}

titleize(["Mary", "Brian", "Leo"], printCallback);


function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks
}

Elephant.prototype.trumpet = function() {
  console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`)
}

Elephant.prototype.grow = function() {
  this.height += 12;
}

Elephant.prototype.addTrick = function(trick) {
  this.tricks.push(trick)
}

function getRandomInt(max) {
  return Math.floor(Math.random() * max);
}

Elephant.prototype.play = function() {
  let randomIdx = getRandomInt(this.tricks.length)
  console.log(this.tricks[randomIdx]);
}


let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

Elephant.prototype.paradeHelper = function() {
  console.log(`${this.name} is trotting by!`)
}

herd.forEach(elephant => elephant.paradeHelper())


const dinerBreakfast = function() {
  const foodItems = ["cheesy scrambled eggs"]

  return function(newItem) {
    foodItems.push(newItem);
    return `I'd like ${foodItems.join(' and ')} please.`;
  }
}

// let bfastOrder = dinerBreakfast();
// bfastOrder("chocolate chip pancakes");
// bfastOrder("grits");