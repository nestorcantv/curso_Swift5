import UIKit

/* Ejercicio 3:
Hacer el menu de la cafetería
y que un metodo me diga cuanto cuesta y cuanto tarda en hacerlo
PD. Y que me diga una hora estimada a partir de cuando hice la consulta.
[tip: tipo de dato date]*/



let date = Date()
let calendar = Calendar.current
var hour = calendar.component(.hour, from: date)
var minutes = calendar.component(.minute, from: date)

class Products{
    
    var name: Coffee
    var preparingTime: Int
    var price: Int
    
    
    init(name: Coffee,
         preparingTime: Int,
         price: Int){
        self.name = name
        self.preparingTime = preparingTime
        self.price = price
        }
    
 
}
enum Coffee{
    case Latte
    case Capucchino
    case Americano
    case Espresso
    case EspressoDoble
    case ChocoAvellana
}

func timePre(preTime: Products){
    if minutes <= 59{
        minutes += preTime.preparingTime
        if minutes >= 60 && hour < 24{
            minutes -= 60
            hour += 1
            print("El \(preTime.name) cuesta $\(preTime.price), su tiempo de preparaciñon es de \(preTime.preparingTime) min y estará listo a las \(hour): \(minutes)")
        }else {
            print("El \(preTime.name) cuesta $\(preTime.price), su tiempo de preparaciñon es de \(preTime.preparingTime) min y estará listo a las \(hour): \(minutes)")
        }
    }
    //Reset Time
    hour = calendar.component(.hour, from: date)
    minutes = calendar.component(.minute, from: date)
}


//Creación de productos
var latte = Products(name: .Latte, preparingTime: 3, price: 35)
var capucchino = Products(name: .Capucchino, preparingTime: 3, price: 30)
var chocoAvellana = Products(name: .ChocoAvellana, preparingTime: 5, price: 40)



//Selecciona la bebida
timePre(preTime: /*Aquí va la bebida*/capucchino)
print("Hora actual", hour,":",minutes)






class Crepa{
    var name: tiposDeCrepas
    var precio: Int
    init(name: tiposDeCrepas,
         precio: Int){
        self.name = name
        self.precio = precio
    }
}
enum tiposDeCrepas{
    case nutella
    case cajeta
    case lechera
}

var crepaDeNutella = Crepa(name: .nutella, precio: 35)
print(crepaDeNutella.name)
//
//var ejemploDeTupla(404,"Error de conexión")

//force Unwraap
//var x: Int = 5, y: Int = 5
//var final = 0
//final = 50 + (x < y ? x : y)
//print (final)
//var userAge: Int16?
//let defaultUserAge: Int16 = 18
//userAge = 25
//var ageUsed = userAge ?? defaultUserAge
//print(ageUsed)
//var userName: String?
//let defaultUserName = "Usuario"
//var usedUserName = userName ?? defaultUserName
//print(usedUserName)
//var force: String?
//force = "Hola"
//print(force)
//if let newForce = force {
//    print(newForce)
//}
////if force != nil {
////  print(force!)
////}
//var nestor: [String] = ["Néstor" , "Caleb" , "Josué"]
//
//for item in 1...5{
//    print(item)
//}
//for item in 1..<5{
//    print(item)
//}
//for item in nestor[0..<nestor.count]{
//    print(item)
//}
//var range = 5...
//range.contains(6)
var isAged: Bool = false
var largeString: String = """
Hola mi nombres es Néstor\
 Josué\
 Moreno
Palma\(isAged)
"""
print(largeString)

let car: [Character] = ["N", "é", "s", "t", "o", "r"]
var myName = "Mi nombre es: " + String(car)

print(myName)
