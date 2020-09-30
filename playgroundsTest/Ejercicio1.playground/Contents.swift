import UIKit

/*
 Ejercicio 1:
 Crear un aplicacion donde pueda escribir el color de mi auto, la cantidad de puertas y marca.
 
 */
class Car{
    var color: String
    var numberOfDoors: Int
    var brand: brands
    init(color: String,
         numberOfDoors: Int,
         brand: brands){
        self.color = color
        self.numberOfDoors = numberOfDoors
        self.brand = brand
    }
    
}

enum brands{
     case Toyota
     case Nissan
     case Ferrari
     case Ford
     case Fiat
    
}
//Puedes agregar los carros que quieras
var car1 = Car(color: "Azul", numberOfDoors: 4, brand: .Nissan)
var car2 = Car(color: "Verde", numberOfDoors: 4, brand: .Toyota)
var car3 = Car(color: "Blanco", numberOfDoors: 2, brand: .Ferrari)

//Arreglo de Stored cars
var arrayCars = [car1]
arrayCars.append(car2)
arrayCars.append(car3)


for ca in arrayCars {
    print("La marca de su carro es: \(ca.brand), es de color \(ca.color) y tiene \(ca.numberOfDoors) puertas")
    
}
