class Car: CustomStringConvertible, Equatable{
    var manufacturer: String
    var carName: String
    var yearOfManufacturing: Int
    init(manufacturer: String, carName: String, yearOfManufacturing: Int){
        self.manufacturer = manufacturer
        self.carName = carName
        self.yearOfManufacturing = yearOfManufacturing
    }
    
    var description: String{
        return "Car is a \(manufacturer), it is a \(carName), and it is from \(yearOfManufacturing)!"
    }
    
    static func == (carOne: Car, carTwo: Car) -> Bool {
        let carsAreTheSame = carOne.manufacturer == carTwo.manufacturer &&
                                       carOne.carName == carTwo.carName &&
                                       carOne.yearOfManufacturing == carTwo.yearOfManufacturing
        return carsAreTheSame
    }
}

var myFirstCar = Car(manufacturer: "Toyota", carName: "Corolla", yearOfManufacturing: 2019)
var mySecondCar = Car(manufacturer: "Toyota", carName: "RAV4", yearOfManufacturing: 2019)
print("\(myFirstCar)")
print("\(mySecondCar)")
if myFirstCar == mySecondCar{
    print("They are the same!")
}
else{
    print("Cars are different.")
}

