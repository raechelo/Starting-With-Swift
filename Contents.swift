import UIKit

var str = "Hello, world"
var play = "heyoooo"

// variables & data types 🤫

var a = 1
var b = 1

a = 3

// if else statements 🤔

let num = 10
let newNum = 8
//
if num < 6 {
//    print(num)
} else if num > 6 {
//    print(newNum)
} else {
//    print("num is not greater or less than 6")
}

// switch statements
var someChar = "c"

switch someChar {
    case "a":
        print("is an A")
    case "b", "c":
        print("is a B or C")
    default:
        print("some fallback")
}

// for in loops 😷

//var sum = 0
//for index in 1...5 {
//    // if we dont need to use index we can instead use _ so there's no error
//    print("hello")
//    sum += index
//    print(sum)
//}

// while loop 😵
var counter = 5
//while counter < 0 {
//    print("hello")
//    counter = counter - 1
//}

//repeat {
//    print("hello again")
//    counter = counter - 1
//}

// functions 🥴
func add() {
    let a = 1
    let b = 2
    let c = a + b
    
    print(c)
}

add()

func subtractNums() {
    let d = 1
    let a = 2
    let e = d - a
    print(e)
}

subtractNums()

// calling a function 😎

func multiplyNums() -> Int {
    let a = 2
    
    let b = a * a
    
    return b
}

print(multiplyNums())

// if we wanted, we could define the func as addTwoNums(arg1 para:Int, arg2 para:Int) but in doing the following ⬇️, we can make the call a little less confusing
func addTwoNums(para:Int, para2:Int) -> Int {
    return para + para2
}

addTwoNums(para: 2, para2: 5)

// when defining a function, we can use _ as the arg1, arg2 which will allow us to call the function without having to use para, para2 as we did ☝️

func subtractTwoNums(_ num1:Int, _ num2:Int) -> Int {
    return num1 - num2
}

subtractTwoNums(3, 2)

// classes 🤓

class BlogPost {
    // properties
    var title = ""
    var body = ""
    var author = ""
}

let myPost = BlogPost()
myPost.title = "x men"
myPost.author = "xavier"
myPost.body = "gambit 4 lyfe"

let newPost = BlogPost()
newPost.title = "avengers"
newPost.author = "raechel"
newPost.body = "iron man is shite"

print(newPost.body)

// inheritance

class Car {
    var topSpeed = 200
    var model = "model x"
    
    func drive() {
        print("driving my \(model) at \(topSpeed)")
    }
}

// FutureCar is a subclass of car
class FutureCar : Car {
    
    override func drive() {
        super.drive()
        print("and rockets boosting at \(topSpeed + 50)")
    }
    func fly() {
        print("Flying")
    }
}

let myRide = Car()
//myRide.drive()

let myNewRide = FutureCar()
myNewRide.drive()

// Initializers

class Person {
    var name = ""
    var age = 0
    
    init(_ name:String, _ age:Int) {
        // set up your object, gives it initial values and the ability to change them when creating a class
        // channel your inner mythical creatures
        self.name = name
        self.age = age
    }
}

var raechel = Person("Raechel", 27)
var zeus = Person("Zeus", 7)
zeus.age
zeus.name

// Optionals

class Robot {
    var name:String?
    // this is an optional, it lets us know that the data type is a string. the ? lets us know that the value of nill (null) or it could actually contain a string
    // it could *optionally* contain a value or not
    // think of it as a box, it could contain a gift or it could not contain a gift
    // shroedinger's box ... as an optional
    var type = ""
    var owner:Person?
    // this means it could have no one assigned as the owner, or it could have someone assigned as the owner
}

let bot = Robot()

// optional binding
if let actualName = bot.name {
    print(actualName + " salut")
} else {
    bot.name = "c3po"
}

// could also check if not equal to nil

if bot.name != nil {
    print("has value")
}

if bot.name == nil {
    print("does not have value")
}

print("hello " + bot.name!)

// properties on classes

// can reset the values *or* set the values using dot notation
bot.name = "C3PO"
bot.name

let newBot = Robot()
newBot.name = "Wall-e"
newBot.name

// arrays -- indexed the same as with Javascript, starting at 0
var arr = ["dog", "cat", "pig"]

// to create an empty array
var emptyArr = [String]()

//to add to an array
// can also use .append() to add to the array
arr += ["dragon", "shark"]

// to remove an item from array
arr.remove(at: 1)

// to change an index
arr[1] = "turtle"

for index in arr {
    print("my " + index)
}

// dictionaries
// stores key value pairs (similar to an object in javascript???)

// creating a new dictionary
var carDB = Dictionary<String, String>()
// can also use 👇
var carDB2 = [String: String]()

carDB["JSD 238"] = "Blue Ferrari"
carDB["TXU 765"] = "Red Tesla"

print(carDB["JSD 238"])

//can update the value
carDB["JSD 238"] = "Blue Tesla"

//to remove the key value pair
//carDB["JSD 238"] = nil

// iteration over dictionaries

for (license, car) in carDB {
    print("\(car) has a license of: \(license)")
}
