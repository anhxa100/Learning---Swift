//
//
//var shoppingList  = ["catfish", "water", "tulip", "blue paint"]
//shoppingList[1] = "bottle of water"
//
//var occupations = [
//    "Macolm": "Captain",
//    "Kayne": "Mechanic",
//]
//occupations["jayne"] = "Public Relations"
//
//let individualScore = [75, 43, 103, 87, 12]
//var teamScore = 0
//for score in individualScore {
//    if score > 50 {
//        teamScore += 3
//    }else{
//        teamScore += 1
//    }
//}
//print(teamScore)
//
//var optionalString: String? = "Hello"
//print(optionalString == nil)
//
//var optionalName: String? = "Hoang Nguyen"
//var greeting = "Hello!"
//if let name = optionalName {
//    greeting = "Hello, \(name)"
//}
//
//let interrestingNumbers = [
//    "Prime": [2,3,5,7,11,13],
//    "Fibonacci": [1,1,2,3,5,8],
//    "Square": [1,4,9,16,35],
//]
//var largest = 0
//for (kind, numbers) in interrestingNumbers {
//    for number in numbers {
//        if number > largest {
//            largest = number
//        }
//    }
//}
//print(largest)
//
//var n = 2
//while n < 100 {
//    n *= 2
//}
//print(n)
//
//var m = 2
//repeat {
//    m *= 2
//} while m < 100
//  print(m)
//
//func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
//    var min = scores[0]
//    var max = scores[0]
//    var sum = 0
//
//for score in scores {
//    if score > max {
//        max = score
//    } else if score < min {
//        min = score
//    }
//    sum += score
//}
//return(min, max, sum)
//}
//let statistics = calculateStatistics(scores: [5, 3, 100, 9])
//print(statistics.sum)
//print(statistics.2)
//
//func makeIncrementer() -> ((Int) -> Int) {
//    func addOne(number: Int) -> Int {
//        return 1 + number
//    }
//    return addOne
//}
//var increment = makeIncrementer()
//increment(7)
//
//func hasAnyMatches(list: [Int], condition:(Int) -> Bool) -> Bool {
//    for item in list {
//        if condition(item) {
//            return true
//        }
//    }
//    return false
//}
//func lessThanTen(number: Int) -> Bool {
//    return number < 10
//}
//var numbers = [20, 19, 7, 12]
//hasAnyMatches(list: numbers, condition: lessThanTen)
//numbers.map({ (number: Int) -> Int in
//let result = 3*number
//return result
//})
//let mappedNumbers = numbers.map({number in 3 * number})
//print(mappedNumbers)
//let sortedNumbers = numbers.sorted{ $0 > $1}
//print(sortedNumbers)
//
//class Shape {
//    var numberOfSide = 0
//    func simpleDecription() -> String {
//        return "A shape with \(numberOfSide) sides."
//    }
//}
//var shape = Shape()
//shape.numberOfSide = 7
//var shapeDescription = shape.simpleDecription()
//class NameShape {
//    var numberOfSides: Int = 0
//    var name: String
//    init(name: String) {
//        self.name = name
//    }
//    func simpleDescription() -> String {
//        return "A shape with \(numberOfSides) side"
//        
//    }
//}
//class Square: NameShape {
//    var sideLeghth: Double
//    init(sideLeghth: Double, name: String) {
//        self.sideLeghth = sideLeghth
//        super .init(name: name)
//        numberOfSides = 4
//    }
//    func area() -> Double{
//        return sideLeghth
//    }
//    override func simpleDescription() -> String {
//        return "A square with sides of length \(sideLeghth)."
//    }
//}
//let test = Square(sideLeghth: 5.2, name: "My test square")
//test.area()
//test.simpleDescription()
//
//class EquilateralTriangle: NameShape{
//    var sideLeghth: Double = 0.0
//    init(sideLeghth: Double, name: String) {
//        self.sideLeghth = sideLeghth
//        super .init(name: name)
//        numberOfSides = 3
//    }
//    var perimeter: Double {
//        get {
//            return 3.0 * sideLeghth
//        }
//        set {
//            sideLeghth = newValue / 3.0
//        }
//    }
//    override func simpleDescription() -> String {
//        return "An equilateral triangle with sides of leghth \(sideLeghth)."
//    }
//}
//var triangle = EquilateralTriangle (sideLeghth: 3.1, name: "a triangle")
//print(triangle.perimeter)
//triangle.perimeter = 9.9
//print(triangle.sideLeghth)
//
//class TriangleAndSquare {
//    var triangle: EquilateralTriangle {
//        willSet {
//            square.sideLeghth = newValue.sideLeghth
//        }
//    }
//    var square : Square {
//        willSet {
//            triangle.sideLeghth = newValue.sideLeghth
//        }
//    }
//    init(size: Double, name: String) {
//        square = Square(sideLeghth: size, name: name)
//        triangle = EquilateralTriangle(sideLeghth: size, name: name)
//    }
//}
//var triangleAndSquare = TriangleAndSquare(size: 10, name: "an other test shape")
//print(triangleAndSquare.square.sideLeghth)
//print(triangleAndSquare.triangle.sideLeghth)
//triangleAndSquare.square = Square(sideLeghth: 50, name: "large square")
//print(triangleAndSquare.triangle.sideLeghth)
//let optionalSquare: Square? = Square(sideLeghth: 2.5, name: "Optional square")
//let sideLeghth = optionalSquare?.sideLeghth
//
//
//
//enum Rank: Int{
//    case ace = 1
//    case two, three, four, five, six, seven, eight, nine, ten
//    case jack, queen, king
//    func simpleDescription() -> String {
//        switch self {
//        case .ace:
//            return "ace"
//        case .jack:
//            return "jack"
//        case .queen:
//            return "queen"
//        case .king:
//            return "king"
//        default:
//            return String(self.rawValue)
//        }
//    }
//}
//let ace = Rank.ace
//let aceRawValue = ace.rawValue
//
//if let convertedRank = Rank(rawValue: 3) {
//    let threeDescription = convertedRank.simpleDescription()
//    
//}
//
//enum Suit {
//    case spades, hearts, diamonds, clubs
//    func simpleDescription() -> String {
//        switch self {
//        case .spades:
//            return "spades"
//        case .hearts:
//            return "hearts"
//        case .diamonds:
//            return "diamonds"
//        case .clubs:
//            return "clubs"
//        }
//    }
//}
//let hearts = Suit.hearts
//let heartDescription = hearts.simpleDescription()
//
//enum ServerRespone {
//    case result(String, String)
//    case failure(String)
//}
//let success = ServerRespone.result("6.00 am", "8.09 pm")
//let failure = ServerRespone.failure("Out of chesse.")
//
//switch success {
//case let .result(sunrise, sunset):
//    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
//case let .failure(message):
//    print("Failure... \(message)")
//}
//
//struct Card {
//    var rank: Rank
//    var suit: Suit
//    func simpleDescription() -> String {
//        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
//    }
//}
//let threeOfShades = Card(rank: .three, suit: .spades)
//let threeOfShapesDescription = threeOfShades.simpleDescription()

//protocol ExampleProtocol {
//    var simpleDescription: String {get}
//    mutating func adjust()
//}
//
//class SimpleClass: ExampleProtocol {
//    var simpleDescripton: String = "A very simple class."
//    var anotherProperty: Int = 69105
//    func adjust() {
//        simpleDescripton += "Now 100% adjusted."
//    }
//}
//var a = SimpleClass()
//a.adjust()
//let aDescription = a.simpleDescripton
//struct SimpleStructure: ExampleProtocol {
//    var simpleDescription: String = "A simple structure"
//    mutating func adjust() {
//        simpleDescription += "(adjusted)"
//    }
//}
//var b = SimpleStructure()
//b.adjust()
//let bDescription = b.simpleDescription


//protocol ExampleProtocol {
//    var simpleDescription: String { get }
//    mutating func adjust()
//}
//
//class SimpleClass: ExampleProtocol {
//    var simpleDescription: String = "A very simple class."
//    var anotherProperty: Int = 69105
//    func adjust() {
//        simpleDescription += "  Now 100% adjusted."
//    }
//}
//var a = SimpleClass()
//a.adjust()
//let aDescription = a.simpleDescription
//
//struct SimpleStructure: ExampleProtocol {
//    var simpleDescription: String = "A simple structure"
//    mutating func adjust() {
//        simpleDescription += " (adjusted)"
//    }
//}
//var b = SimpleStructure()
//b.adjust()
//let bDescription = b.simpleDescription
//extension Int: ExampleProtocol {
//    var simpleDescription: String {
//        return "The  number \(self)"
//    }
//    mutating func adjust() {
//        self += 42
//    }
//}
//print(7.simpleDescription)
//let protocolValue: ExampleProtocol = a
//print(protocolValue.simpleDescription)

//let array = [Int](1...10)
//var soThuTu = [Int](10...100)
//
//var characters: [Character] = ["C", "a", "f", "é"]
//characters.reverse()
//print(characters)
//var arr = [Int](10...100)
//let count = arr.count
//for i in 0..<count {
//    (arr[i],arr[count - i - 1])  = (arr[count - i - 1],arr[i])
//}


// Yields: ["Asus", "Lenovo", "Sony", "Microsoft", "Apple"]
//var arr = [Int](10...100)
//
//var reversedNum: [Int]
//reversedNum = []
//
//for num in arr {
//   reversedNum.insert((num), at:0)
//}
//print(reversedNum)

//let shortForm : Int?  = Int("42")
//let longForm: Optional<Int> = Int("42")
//let number: Int? = Optional.some(<#T##Wrapped#>)
//
//
//
//protocol ExampleDelegate {
//    func method1()
//}
//
//class ClassComformDelegate: ExampleDelegate {
//    func method1() {
//        print("ClassComformDelegate")
//    }
//}




//let string98: String = "98"
//let string99: String = "99"
//let string100: String = "100"
//let string101: String = "101"
//
//let int98: Int = Int(string98)!
//let int99: Int = Int(string99)!
//let int100: Int = Int(string100)!
//let int101: Int = Int(string101)!
//
//// optional chaining (if or guard) instead of "!" recommended. therefore option b is better
//
//let finalInt: Int = int98 + int99 + int100 + int101
//print(finalInt) // prints Optional(398) (optional)




//func getCalculatedIntegerFrom(strings: [String]) -> Int {
//
//    var result = Int()
//
//    for element in strings {
//
//        guard let int = Int(element) else {
//            break // or return nil
//            // break instead of return, returns Integer of all
//            // the values it was able to turn into Integer
//            // so even if there is a String f.e. "123S", it would
//            // still return an Integer instead of nil
//            // if you want to use return, you have to set "-> Int?" as optional
//        }
//
//        result = result + int
//
//    }
//
//    return result
//
//}
//
//let arrayOfStrings = ["98", "99", "100", "101"]
//
//let result = getCalculatedIntegerFrom(strings: arrayOfStrings)
//
//
//let myString = "556"
//let myInt = Int(myString)
//
//
//class Foo {
//    var  myProperty:Int = 0 {
//        didSet {
//            print("Gía trị của myProperty đã được thay đổi từ \(oldValue) đến \(myProperty)")
//        }
//    }
//    
//}
//class Foo {
//    var myPropertyValue = 0
//    var myProperty: Int {
//        get {return myPropertyValue}
//        set {
//            print("Giá trị của myProperty đã được thay đổi từ \(myPropertyValue) đến \(newValue)")
//            myPropertyValue = newValue
//        }
//    }
//}

