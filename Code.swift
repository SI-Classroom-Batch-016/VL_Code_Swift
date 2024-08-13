// MARK: - Variablen Datentypen
let name = "Peter"

var age: Double = 29

let isStudent: Bool = true

let numberpi: Float = 3.14
let numberPiDouble = Double(numberpi)

let piString = String(numberpi)

let ageInt = Int(age)

let halfAge = age / 2

// print("Die Hälfte von \(age) ist: \(halfAge)")

let firstName = "Peter"
let lastName = "Müller"

let fullName = firstName + " " + lastName


// MARK: - Optionals

var city: String? = nil
//print(city)

//let unwrappedCity = city!
let unwrappedCity = city ?? "Keine Stadt"
//print(unwrappedCity)

// MARK: - Funktionen

func printName(){
    print(fullName)
}


func printName2(name: String){
    print(name)
}

// printName2(name: "Max Mustermann")

func printName3(_ name: String){
    print(name)
}

// printName3("Max Mustermann")

func getNames(_ name1: String, _ name2: String) -> String {
    return name1 + " " + name2
}

let fullname = getNames("Max", "Müller")
print(fullname)

func printFullName(firstName n1: String, lastName n2: String){
    print(n1 + " " + n2)
}

printFullName(firstName: "Beate", lastName: "Bier")

func printOptional(name: String?){
    print(name ?? "Kein Name angegeben")
}

printOptional(name: "Peter")

// MARK: - Arrays

var countries = ["Deutschland", "USA", "Indien", "Frankreich"]

let index = 5

countries.append("Japan")
countries.append("China")

if countries.count > index {
    let country = countries[index]
    print(country)
}

print(countries)
let removedElement = countries.remove(at: 1)
print(countries)
print("Entferntes Element: \(removedElement)")

let indexFrance = countries.firstIndex(of: "Frankreich")
if indexFrance != nil {
    let france = countries[indexFrance!]
    print(france)
}

print(countries)
countries.reverse()
print(countries)
var sortedCountries = countries.sorted()
print(countries)
print(sortedCountries)

sortedCountries.removeFirst()
sortedCountries.removeLast()
print(sortedCountries)


// MARK: - Dictionary

var phoneNumbers: [String : String] = ["Max":"+49 1234235512", "Paul": "32950258510"]
print(phoneNumbers["Max"] ?? "Name existiert nicht")

// MARK: - Enum & Switch Case

enum Animal: String {
    case cat = "Mein Katze"
    case dog = "Mein Hund"
    case mouse = "Meine Maus"
}

//var catRawValue = Animal.cat.rawValue
//
//print(catRawValue)

var animal: Animal = .cat

switch animal {
case .cat:
    print("Dies ist meine Katze")
default:
    print("Dies ist mein Tier")
}

var number = 3

switch number {
case 0:
    print("Die Zahl ist 0")
case 1:
    print("Die Zahl ist 1")
case 2,3,4:
    print("Die Zahl ist 2, 3 oder 4")
default:
    print("Es ist eine Zahl")
}

enum Weather: Double {
    case sunny
    case rain
    case snow = 4
}

print(Weather.snow.rawValue)
print(Weather.rain.rawValue)

let weatherSnow = Weather(rawValue: 100) ?? Weather.rain
print(weatherSnow)

