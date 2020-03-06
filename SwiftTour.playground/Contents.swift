import UIKit

//var str = "Hello, playground"
//print("hello world")
//var myVariable = 42
//myVariable = 50
//let myConstant = 42
//
//let implicitInteger = 70
//let implicitDouble = 70.0
//let expicitDouble: Double = 70
//
////experiment
//let myFloat: Float = 4
//
//let label = "The width is"
//let width = 90
////let widthLabel = label + String(width)
////let widthLabel = label + width
//
//let apples = 3
//let oranges = 5
//let applesSummary = "I have \(apples) apples"
//let fruitSummary = "I have \(apples + oranges) pieces of fruit."
//
////experiment
//let height = 1.72
//let greeting = "My name is felix, I'm \(height) tall."
//
////三引号 开始和结束符要匹配上 里面的文言可以有indentation 文言要和最后的结束符对齐
//let quotation =
//"""
//    I said "I have \(apples) apples."
//And then I said "I have \(apples + oranges) pieces of fruit."
//"""
//
//
//var shoppinglist = ["catfish","water","tulips"]
//shoppinglist[1] = "bottle of water"
//shoppinglist.append("blue paint")
//print(shoppinglist)
//
//var occupations = [
//    "Malcolm":"Captain",
//    "Kaylee":"Mechanic",
//                    ]
//occupations["Jayne"] = "Public Relations"
//occupations
//
//
//let emptyArray = [String]()
//let emptyDictionary = [String:Float]()
////当类型可推断时 置空数组
//shoppinglist = []
//occupations = [:]
//
//
////control flow
//let individualScores = [75,43,103,87,12]
//var teamScore = 0
//for score in individualScores {
//    if score > 50 {
//        teamScore += 3
//    }else {
//        teamScore += 1
//    }
//}
//print(teamScore)
//
//var optinonalString: String? = "Hello"
//print(optinonalString == nil)
//
////var optionalName: String? = "John Appleseed"
//var optionalName: String?
//var greetings = "Hello"
//if let name = optionalName {
//    greetings = "hello!\(name)"
//}else {
//    greetings = "goodnight!"
//}
//print(greetings)
//
////?? 第一个参数是optional，第二个参数不是optional
//let nickName: String? = nil
//let fullName: String = "John Appleseed"
//let informalGreeting = "Hi \(nickName ?? fullName)"
//print(informalGreeting)
/*
//switch no need break
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some rasins and make ants on a log.")
case "cumcuber","watercress":
    print("That would make a tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(vegetable)!")
default:
    print("Everyting tastes good in soup.")
}
//experiment
//removing the default case
*/
/*
//use for-in to iterate items in a dictionary
let interestingNumbers = [
    "Prime":[2,3,5,7,11,13],
    "Fabonacci":[1,1,2,3,5,8],
    "Square":[1,4,9,16,25]
]

var largest = 0
var kindof: String = ""
for (kind,numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            kindof = kind
        }
    }
}

print(largest,kindof)


*/
/*
//while
var n = 2
while n < 100 {
    n *= 2
}
print(n)

var m = 2
repeat{
    m *= 2
}while n < 100
print(m)

var total = 0
//for i in 0..<4 {
//    total += i
//}

for i in 0...4 {
    total += i
}

print(total)*/

//functions and closures
//func greet(person: String, day: String) -> String {
//    return "Hello \(person),today is \(day)"
//}
/*
func greet(_ person: String, on day: String) -> String {
    return "Hello \(person),today is \(day)"
}
greet("Bob", on: "Tuesday")
    

func calculateStatistics(scores:[Int]) -> (min:Int, max:Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        }else if score < min {
            min = score
        }
        sum += score
    }
    return (min,max,sum)
}

let statistics = calculateStatistics(scores: [5,3,100,3,9])
print(statistics.sum)
print(statistics.2)

//functions can be nested
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
     
    add()
    return y
    
}

print(returnFifteen())

func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number :Int) -> Int {
        return number + 1
    }
    
    return addOne
}

var increment = makeIncrementer()
print(increment(7))

func hasAnyMatches(list:[Int],condition:(Int) -> Bool) ->Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThan(number: Int) -> Bool {
    return number < 10
}
var numbers = [20,19,7,12]

hasAnyMatches(list: numbers, condition: lessThan)


numbers.map({(number:Int) -> Int in
    let result = number*3
    return result
})
//experiment
numbers.map({(number:Int) -> Int in
    if number%2 == 0 {
        
    }else {
        return 0
    }
    return 0
})
//当闭包的类型是已知的，你可以删除他的参数类型和返回类型
let mappedNumbers = numbers.map({number in 3*number
})
print(mappedNumbers)

//对于函数闭包只有一个参数时，可以省略（）
let sortedNumbers = numbers.sorted {$0 > $1}
print(sortedNumbers)

//-------------Objects and classes-------------





class Shape {
    var numberofSides = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
//    let whichShape = ""
    
    func simpleDescription() -> String {
        return "A shape with \(numberofSides) sides."
    }
    func description(des: String) -> String {
        return "\(des)"
    }
}

var shape = Shape(name: "circle")
shape.numberofSides = 7
var description = shape.simpleDescription()

print(description)

class Square: Shape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberofSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}

let testSquare = Square(sideLength: 5.2, name: "A test Square")
print(testSquare.area())
print(testSquare.simpleDescription())

class Circle: Shape {
    var radius: Double
    
    init(radius: Double,name: String) {
        self.radius = radius
        super.init(name: name)
        numberofSides = 1
    }
    
    func area() -> Double {
        return 3.1415926*radius*radius
    }
    
    override func simpleDescription() -> String {
        return "A Circle with radius of length \(radius)."
    }
}

let testCircle = Circle(radius: 2, name: "A circle")
print(testCircle.area())
print(testCircle.simpleDescription())

class EquilateralTriangle: Shape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberofSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3*sideLength
        }
        set (parameter){
            sideLength = parameter/3
        }
    }
    
    override func simpleDescription() -> String {
        return "A equilateralTriangle with side of length \(sideLength)."
    }
}

var testTriangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(testTriangle.perimeter)
print(testTriangle.simpleDescription())

testTriangle.perimeter = 9.9
print(testTriangle.sideLength)


class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}

var triangleAndSquare = TriangleAndSquare(size: 10, name: "Another test shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)

triangleAndSquare.square = Square(sideLength: 50, name: "large square")
print(triangleAndSquare.triangle.sideLength)

let optionalSquare: Square? = Square(sideLength: 2.5, name: "small square")
let sideLength = optionalSquare?.sideLength

print(sideLength)
*/

/*
//-------------Enumerations and Structs-----------
enum Rank: Int {
    case ace = 1
    case two,three,four,five,six,seven,eight,nine,ten
    case jack,queen,king
    
    static let allValues = [ace,two,three,four,five,six,seven,eight,nine,ten,jack,queen,king]
    
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}


let ace = Rank.ace
let aceRawValue = ace.rawValue

aceRawValue
ace.simpleDescription()

func compare(value1: Rank, value2: Rank) -> Bool {
    var largeThan: Bool
    if value1.rawValue > value2.rawValue {
        largeThan = true
    }else {
        largeThan = false
    }
    return largeThan
}

let three = Rank.three
three.rawValue

compare(value1: three, value2: ace)

if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
}

enum Suit {
    case spades,hearts,diamonds,clubs
    
    static let allValues = [spades,hearts,diamonds,clubs]
    
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
    func color() -> String {
        switch self {
        case .spades,.clubs:
            return "black"
        case .diamonds,.hearts:
            return "red"
        }
    }
}

let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()

hearts.color()

enum ServerRespnose {
    case result(String, String)
    case failure(String)
    case value(String,String)
}

let success = ServerRespnose.result("6:00 am", "8:09 pm")
let failure = ServerRespnose.failure("Out of cheese.")

switch success {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
    print("Failure... \(message)")
case let .value(valueOne, valueTwo):
    print("value")
}


struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())."
    }
}

let threeOfSpades = Card(rank: .three, suit: .spades)
let thressOfSpadesDescription = threeOfSpades.simpleDescription()


//experiment
func AllCards() -> [Card] {
    var arr: Array = [Card]()
    for rank in Rank.allValues {
        for suit in Suit.allValues {
            let card = Card(rank: rank, suit: suit)
            arr.append(card)
        }
    }
    return arr
}
let allCards = AllCards()
for card in allCards {
    print(card.simpleDescription())
}
*/
/*
//----------Protocols and Extensions----------------
protocol ExampleProtocol {
    var simpleDescription: String {get}
    var simpleValue: String {get}
    mutating func adjust()
}
//class里不需要 mutating 因为class里的方法已知可以修改class
class SimpleCalss: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var simpleValue: String = "Simple value"
    var anotherProperty: Int = 698767
    func adjust() {
        simpleDescription += " Now 100% adjusted."
    }
}

let a = SimpleCalss()
a.adjust()
let aDescription = a.simpleDescription
//structure 里mutating标记方法 可以修改structure
struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure."
    var simpleValue: String = "Simple value"
    mutating func adjust() {
        simpleDescription += "(adjusted)"
    }
}

var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number is \(self)"
        
    }
    var simpleValue: String {
        return "value"
    }
    mutating func adjust() {
        self += 42
    }
}
var seven: Int = 7

print(seven.simpleDescription)
print(seven.adjust())


let protocolValue: ExampleProtocol = a
print(protocolValue.simpleDescription)
*/
/*
//------------Error handling-------------------
enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}

func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never has Toner" {
        throw PrinterError.noToner
    }
    return "Job sent"
}

do {
    let printerResponse = try send(job: 1040, toPrinter: "Toner")
    //throw PrinterError.onFire
    print(printerResponse)
}catch PrinterError.onFire {
        print("error onfire")
}catch let printError as PrinterError {
    print("printer error:\(printError).")
}catch  {
    print(error)Ò
}
let printerSuccess = try? send(job: 1884, toPrinter: "What")
let printerFail = try? send(job: 1235, toPrinter: "Never has Toner")
*/
/*
let decimalInteger = 17
let binaryInteger = 0b10001
let octalInteger = 0o21
let hexadecimalInteger = 0x11

//let i = 1
//if i {
//    print("ssss")
//}

let age = -3
//if age > 10 {
//    print("You can ride the roller-coaster or the ferris wheel.")
//} else if age >= 0 {
//    print("You can ride the ferris wheel.")
//} else {
//    assertionFailure("A person's age can't be less than zero.")
//}

//assert(age >= 0)
let index = -5
//precondition(index > 0, "Index must be greater than zero.")

//the < operator can't be applied to Bool value
//("blue",false) > ("purple",true)

let defaultColorName = "red"
var userDefinedColorName: String?

userDefinedColorName = "purple"

var colorNameToUse = userDefinedColorName ?? defaultColorName


let names = ["Anna","Alex","Brian","Jack"]
//for name in names[2...] {
//    print(name)
//}

for name in names[..<2] {
    print(name)
}

//check whether a one-side range contains a particular value
let range = ...5
range.contains(7)
range.contains(4)
range.contains(-1)

let softWrappedQuotation = """

The White Rabbit put on his spectacles.  "Where shall I begin, \n
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."

"""

print(softWrappedQuotation)

let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
let dollarsign = "\u{23}"
let atSign = "\u{40}"
let blackheart = "\u{2665}"
let sparkingheart = "\u{1f496}"

let threeMoreDoubleQuotationMarks = #"""
Here are three more double quotes: """
"""#
//string is value type and structures and enumerations
let emptyStrig = ""
let anotherEmptyString = String()

let valueTypeString = "123"

var vString = valueTypeString
vString = "234"
print(valueTypeString)

for character in "Dog!" {
    print(character)
}
let exclamationMark: Character = "!"

let catCharacters: [Character] = ["c","a","t","!","🐱"]
let catString = String(catCharacters)

print(#"This is cat \#(catString)!"#)

let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"
 let greeing = "Guten Tag!"
let character: Character = greeing[greeing.startIndex]

let c1:Character = greeing[greeing.index(before: greeing.endIndex)]
let c2 = greeing[greeing.index(after: greeing.startIndex)]

let index1 = greeing.index(greeing.startIndex, offsetBy: 7)
let c3 = greeing[index1]

for index in greeing.indices {
    print(greeing[index])
}

var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)

welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))

welcome.remove(at: welcome.index(before: welcome.endIndex))
let range1 = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range1)

//subString
let greeting = "Hello, world!"
let index2 = greeting.firstIndex(of: ",") ?? greeting.endIndex
let begining = greeting[..<index2]
*/
/*
//----------------Array --------------------
var array = Array(repeating: 0.0, count: 3)

var threeDouble = Array(repeating: 2.5, count: 3)

let sixDouble = array + threeDouble
var shoppinglist: [String] = ["milk","eggs"]
shoppinglist.append("flour")
shoppinglist += ["Baking Powder"]

shoppinglist[0...2] = ["Banana","Apples"]

let apples = shoppinglist.removeLast()

for (index, item) in shoppinglist.enumerated() {
    print("index is \(index + 1) value is :\(item)")
}
apples.contains("Banana")

//------------------Set----------------------
var letters = Set<Character>()
letters.insert("a")
letters = []
var favorite: Set<String> = ["Rock","Classical","Hiphop"]

favorite.contains("Rock")

for fav in favorite.sorted() {
    print(fav)
}

let oddDigits: Set = [1,3,5,7,9]
let eventDigits: Set = [0,2,4,6,8]
let singleDigitPrimeNumber: Set = [2,3,5,7]

oddDigits.union(eventDigits).sorted()
oddDigits.intersection(eventDigits).sorted()
oddDigits.subtracting(singleDigitPrimeNumber).sorted()
oddDigits.symmetricDifference(singleDigitPrimeNumber).sorted()

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
houseAnimals.isDisjoint(with: cityAnimals)
//------------------switch---------------------
let anotherCharacter: Character = "a"
//switch anotherCharacter {
//case "a":
//case "A":
//    print("A")
//default:
//    print("a")
//}

let approximateCount = 62
let countedThings = "moons orbiting Saturn"
let naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings)")

let somePoint = (1,1)
switch somePoint {
case (0,0):
    print("\(somePoint) is at origin")
case (_,0):
    print("\(somePoint) is at x-axis")
case (0,_):
    print("\(somePoint) is at y-axis")
case (-2...2,-2...2):
    print("\(somePoint) is inside the box")
default:
    print("\(somePoint) is out of the box")
}

let anotherPoint = (2,0)
switch anotherPoint {
case (let x,0):
    print("on the x-axis with an x value of \(x)")
case (0,let y):
    print("on the y-axis with an y value of \(y)")
case (let x, let y):
    print("somewhere else at (\(x),\(y))")
}

let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x,y) where x == y:
    print("(\(x),\(y)) is on the line x==y")
case let (x,y) where x == -y:
    print("(\(x),\(y)) is on the line x==-y")
case let (x,y):
    print("(\(x),\(y)) is just some arbitrary point.")
}


if #available(iOS 10,macOS 10.12, *) {
    print("1")
}else {
    print("2")
}


func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    
    return total/Double(numbers.count)
}

arithmeticMean(1,2,3,4,5)
arithmeticMean(3,8.25,18.75)


func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var a = 1
var b = 2
swapTwoInts(&a, &b)

print(a,b)

*/
/*
//----------------------closure----------------------------
let name = ["Chris","Alex","Ewa","Barry","Danellia"]
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

var reversedNames = name.sorted(by: backward(_:_:))
reversedNames = name.sorted(by: {(s1: String,s2: String) -> Bool in
    return s1 > s2
    
})

reversedNames = name.sorted(by: {s1,s2 in return s1>s2})
reversedNames = name.sorted(by: {s1,s2 in s1>s2})
reversedNames = name.sorted(by: {$0 > $1})
reversedNames = name.sorted(by: >)
//The parameters to functions and closures are always constants.
let digitNames = [0:"zero",1:"one",2:"two",3:"three",4:"four",5:"five",6:"six",7:"seven",8:"eight",9:"nine"]
let numbers = [16,58,123];

let strings = numbers.map{(number) -> String in
    var number = number
    var output = ""
    repeat{
        //dictionary subscripts return an optional value to indicate that the dictionary lookup can fail if the key does not exist.
        output = digitNames[number % 10]! + output
        number /= 10
    }while number > 0
    
    return output
}

print(strings)


func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)

incrementByTen()
incrementByTen()
incrementByTen()

*/
/*
enum CompassPoint {
    case south
    case north
    case west
    case east
}

enum Beverage: CaseIterable {
    case coffee, tea, juice
}

let numberOfChoices = Beverage.allCases.count

for beverage in Beverage.allCases {
    print(beverage)
}
enum Barcode {
    case upc(Int,Int,Int,Int)
    case qrCode(String)
}
var productBarcode = Barcode.upc(8, 85909, 51226, 3)

productBarcode = .qrCode("ABCDEDFFFFFFFF")

switch productBarcode {
case let .upc(numberSystem, manufacturer, product, check):
    print("UPC:\(numberSystem)")
case let .qrCode(productCode):
    print("\(productBarcode)")
}

enum Planet: Int {
    case mercury = 1,venus, earth, mars, jupiter, saturn, uranus, neptune
}

enum CompassString: String {
    case north, south, east, west
}

let earthOrder = Planet.earth.rawValue
let sunsetDirection = CompassString.west.rawValue

let possiblePlanet = Planet(rawValue: 7)

indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression,ArithmeticExpression
    )
}
//(5 + 4)*2
let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let two = ArithmeticExpression.number(2)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, two)

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
       return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}

print(evaluate(product))

struct Resolution {
    var width = 0
    var height = 0
}

class VideoModel {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

var someResolutio = Resolution()
someResolutio.width = 100

var someVideoMode = VideoModel()

var anotherResolution = someResolutio
anotherResolution.width = 20

let hd = Resolution(width:250, height:1000)

print("\(someResolutio.width) and \(anotherResolution.width)")


var tenEighty = VideoModel()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let anotherTenEighty = tenEighty

if anotherTenEighty === tenEighty {
    print("identical to")
}else {
    print("not identical to")
}


struct RangeOfLenght {
    var firstValue: Int
    let length: Int
}

let rangeOfFouritems = RangeOfLenght(firstValue: 0, length: 4)
//RangeOfLenght.firstValue = 8

class DataImporter {
    var fileName = "data.txt"
}

class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
}

var manager = DataManager()
manager.data.append("some data")
manager.data.append("some more data")

print(manager)


struct Point {
    //definate x-,y-coordinate
    var x = 0.0, y = 0.0
}

struct Size {
    //definate width and height
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var centerPoint: Point {
        get {
//            let x = origin.x + size.width/2
//            let y = origin.y + size.height/2
//            return Point(x: x, y: y)
            Point(x: origin.x + size.width/2, y: origin.y + size.height/2)
        }
        set(newCenter) {
            origin.x = newCenter.x - size.width/2
            origin.y = newCenter.y - size.width/2
        }
    }
}

var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10, height: 10))
print(square.centerPoint)

square.centerPoint = Point(x: 15, y: 15)
print(square.origin.x,square.origin.y)


struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double {
        return width * height * depth
    }
}
let fourByfiveBytwo = Cuboid(width: 4, height: 5, depth: 2)
print("the volume of fourByfiveByTwo is \(fourByfiveBytwo)")


class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 200

stepCounter.totalSteps = 300

@propertyWrapper
struct TwelveOrLess {
    private var number: Int
    init() {
        self.number = 0
    }
    var wrappeValue: Int {
        get { return number}
        set { number = min(newValue, 12)}
    }
}

struct SmallRectangle {
    @TwelveOrLess var height: Int
    @TwelveOrLess var width: Int
}

var rectangle = SmallRectangle(height: 10, width: 10)
print(rectangle.height)

rectangle.height = 10
print(rectangle.height)
 
rectangle.height = 23
print(rectangle.height)
*/
/*
class Counter {
    var count = 0
    //instance method
    func increment() {
        self.count += 1
    }
    //instance method
    func increment(by amount: Int) {
        count += amount
    }
    //intance method
    func  reset() {
        count = 0
    }
}


let counter = Counter()
//the initial counter value is 0
counter.increment()
//the counter's value is now 1
counter.increment(by: 5)
//the counter's value is now 6
counter.reset()
//the counter's value is now 0

struct Point {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
//        x += deltaX
//        y += deltaY
        self = Point(x: x + deltaX, y: y + deltaY)
    }
}

var somePoint = Point(x: 1.0, y: 1.0)
somePoint.moveBy(x: 2.0, y: 3.0)
print("The point is now at\(somePoint.x),\(somePoint.y)")

var fixedPoint = Point(x: 3.0, y: 3.0)
fixedPoint.moveBy(x: 4.0, y: 4.0)

enum TristateSwitch {
    case off, low, high
    mutating func next() {
        switch self {
        case .off:
            self = .low
        case .low:
            self = .high
        case .high:
            self = .off
        }
    }
}
var ovenLight = TristateSwitch.low
ovenLight.next()
//ovenLight is now equal to .hight

ovenLight.next()
//ovenLight is now equal to .off

class SomeClass {
    class func someTypeMethod(){
        //type method implementation goes here
        print("type method implementation goes here")
    }
}

SomeClass.someTypeMethod()

//The LevelTracker tructure keeps track of the highest level that any player has unlocked
struct LevelTracker {
    //type property
    static var hightestUnlockedLevel = 1
    //instance property,to check the level that a player is currently playing
    var currentLevel = 1
    
    //type function
    static func unlock(_ level: Int) {
        if level > hightestUnlockedLevel {
            hightestUnlockedLevel = level
        }
    }
    //type function
    static func isUnlocked(_ level: Int) -> Bool {
        //type method can access the hightestUnlockedLevel type property without your needing to write LevelTracker.
        return level <= hightestUnlockedLevel
    }
    
    //instance method Before updating currentLevel,this method checks whether the requested new level is already unlocked.
    //ignore the return value
    @discardableResult
    mutating func advance(to level: Int) -> Bool {
        if LevelTracker.isUnlocked(level) {
            currentLevel = level
            return true
        }else {
            return false
        }
    }
}

class Player {
    //instance property to tack that player's progress
    var tracker = LevelTracker()
    let playerName: String
    //instance method, this method unlocks the new level for all players and updates the player's progress to move them to the next level
    func complete(level: Int) {
        LevelTracker.unlock(level + 1)
        tracker.advance(to: level + 1)
    }
    init(name: String) {
        playerName = name
    }
}

var player = Player(name: "Argyrios")
player.complete(level: 1)
print("highest unlocked level is now \(LevelTracker.hightestUnlockedLevel) and \n currentLevel is \(player.tracker.currentLevel)")


var anotherPlayer = Player(name: "Annee")
anotherPlayer.complete(level: 5)
print("highest unlocked level is now \(LevelTracker.hightestUnlockedLevel) and \n currentLevel is \(anotherPlayer .tracker.currentLevel)")

player = Player(name: "Beto")
if player.tracker.advance(to: 6){
    print("player is now on level 6")
}else {
    print("level 6 has not been unlocked")
}
*/

//-------------------Subscripts----------------------
//subscript(index: Int) -> Int {
//    get {
//        //return an appropriate subscript value here.
//    }
//    set {
//        //Perform a suitable setting action here.
//    }
//}

//read-only subscript
//subscript(index: Int) -> Int {
//    //return an appropriate subscript value here.
//}
/*
struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}

let threeTimesTable = TimesTable(multiplier: 3)
print("six times three is \(threeTimesTable[6])")


struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: (rows * columns))
    }
    
    func indexIsValid(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            return grid[(row * columns) + column]
        }
        set {
            assert(indexIsValid(row: row, column: column), "Index out of range.")
            grid[(row * columns) + column] = newValue
        }
    }
}

var matrix = Matrix(rows: 2, columns: 2)

matrix[0,1] = 1.5
matrix[1,0] = 3.2
print(matrix)

let someValue = matrix[2,2]
//This triggers an assert, because [2,2] is outside of the matrix bounds.


enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    static subscript(n: Int) -> Planet {
        return Planet(rawValue: n)!
    }
}

let mars = Planet[4]
print(mars)

//enum newPlanet: Planet {
//    case newMercury
//
//}
//
//let newP = newPlanet[1]
//print(newP)
*/
