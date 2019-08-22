import UIKit
//Remember: Option Click any keyword in code to access Developer Documentation, or go to help and click Developer Documentation







/* SYNTAX: Classes
class Animal{
    var animalName: String
    var numberOfLimbs: Int
    
    func makeNoise(){
        // Do Nothing!
    }
    init(animalName: String, numberOfLimbs: Int){
        self.animalName = animalName
        self.numberOfLimbs = numberOfLimbs
    }
}
class Cat:Animal {
    var breed: String = ""
    
    override func makeNoise() {
        print("Meow")
    }
    
    init(animalName: String, numberOfLimbs: Int, breed: String) {
        self.breed = breed
        super.init(animalName: animalName, numberOfLimbs: numberOfLimbs)
    }
}
class Snake:Animal {
    var poisonous: Bool = false
    var length: Double = 0
    override func makeNoise() {
        print("Hiss")
    }
    init(animalName: String, length: Double, poisonous: Bool) {
        self.poisonous = poisonous
        self.length = length
        super.init(animalName: animalName, numberOfLimbs: 0)
    }
}
let myCat = Cat(animalName: "Whiskers", numberOfLimbs: 4, breed: "Ragdoll")
print(myCat.animalName)
myCat.makeNoise()
print(myCat.breed)

let mySnake = Snake(animalName: "Garter", length: 12.1, poisonous: true)
print(mySnake.length)
mySnake.makeNoise()
print(mySnake.poisonous)

let myAnimal = Animal(animalName: "Miscellaneous", numberOfLimbs: 0)
print(myAnimal.animalName)
myAnimal.makeNoise()








 SYNTAX: Structures
struct Person {
    var name: String
    var age: Int
    var location: String
    func whoAmI() {
        print("Hi, I'm \(name)! I'm \(age) and live in \(location).")
    }
}
let aPerson = Person(name: "David", age: 22, location: "Australia")
let bPerson = Person(name: "Tristan", age: 22, location: "Perth")

print(bPerson.location)
print(aPerson.name)

aPerson.whoAmI()
bPerson.whoAmI()
 
struct waterMeter {
var litresused: Int = 0
var customer: Person = Person(name: "Jane", age: 66, location: "Australia")
}
let theMeter = waterMeter()
print(theMeter.litresused)
print(theMeter.customer.age)








 SYNTAX: Functions

 func sayRan() {
    print("Ran!")
}
sayRan()

func calcMidpoint(firstNum: Int, secondNum: Int) -> Int {
    let result = (firstNum+secondNum)/2
    return result
}
let resultA = calcMidpoint(firstNum: 10, secondNum: 15)
print(resultA)

 
 
 
 

 SYNTAX: accessing values of a dictionary (same structure for arrays, use "if let" there too for safety)
 
var nameAge = ["David": 28, "Tristan": 23]

if let david_age = nameAge["David"]{
    print(david_age)
    nameAge["David"] = 44
}

if let david_new_age = nameAge["David"]{
    print(david_new_age)
}

nameAge.removeValue(forKey: "David")

print(nameAge)
 
 

 


SYNTAX: for and for in loops, and combining with arrays and dictionaries

for num in 10...15{
    print("Number is: \(num)")
}

var lecturers = ["David", "Tristan", "Steve"]

for lecturer in lecturers{
    print(lecturer)
}

var ages = ["David": 28, "Tristan": 23, "Steve": 45]

for person in ages{
    print(person.value)
}

 

 
 
 SYNTAX: while loops

var myScore : Int = 5

while myScore < 10{
    print("not high enough score yet!")
    myScore += 1
}

var points: Int = 5
var numberOfServes = 1
while points < 50 && numberOfServes < 3{
    print("Play on, points = \(points)")
    points *= 2
    numberOfServes += 1
}

 

 

 SYNTAX: Switch statement

var numberOfSiblings: Int = 2
 
switch numberOfSiblings {
case 0:
    print("only child")
case 1:
    print("A single sibling")
case 2:
    print("A brother or sister or two")
default:
    print("Wow")
}

numberOfSiblings = 7

switch numberOfSiblings {
case 0...1:
    print("A lonely child")
case 2...4:
    print("Lots of sharing")
case 5...7:
    print("That is crowded")
default:
    print("Nothing to say")
}

 */





