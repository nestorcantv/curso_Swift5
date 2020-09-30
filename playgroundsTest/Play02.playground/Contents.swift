import UIKit

var str = "Hello, playground"
var welcomerMessage : String

/*Inicializamos el valor de welcome message
welcomerMessage = "Valor inicial"

var maxInt = UInt8.min
var minInt = UInt8.max

let integerMinU     = UInt.min
let integerMaxU     = Int.max
let integerMin8     = Int8.min
let integerMax8     = Int8.max
let integerMinU16   = UInt16.min
let integerMaxU16   = UInt16.max
let integerMin16    = Int16.min
let integerMax16    = Int16.max
let integerMaxU32   = UInt32.max

var prueba : UInt8 = 8
var enteroDePrueba : Float32 = 8.99
var resultado = prueba + UInt8(enteroDePrueba)

var queOnda : String
var queHubo = String()
queOnda = "Que onda"
queHubo = "Que Hubo?"
print(queOnda, queHubo)

// prueba de tupla
var tupla = (StatusCode: 404, StatusCodeMessage: "Servidor no encontrado")
let(e1,e2) = tupla
print(tupla.StatusCode, tupla.StatusCodeMessage)
let tuplaName = (name: "Néstor Josué" , lastName: "Moreno Palma" , age: 28)
print("Su nombre es: \(tuplaName.name) \(tuplaName.lastName) y tienes \(tuplaName.age) años de edad")

var test = "34"
var testToInt = Int(test)
print(testToInt!)*/

var isAged : UInt8?


isAged = 56
if isAged != nil {
    print("Es mayor de edad. Go ahead!! \(isAged!)")
} else {
    print("Usted no es mayor de edad. Usted tiene")
}
if let age = isAged{
    print("Usted es mayor de edad. Usted tiene \(age)")
}
if let x = UInt16("1545"),
    let y = UInt16("1545"), x == y {
    let z = x + y
    print(z)
}



func makeASandwich(statusHambre : String)throws{
    let response = Bool(statusHambre)
    if response == true{
        print("Su sabdwich está en proceso de preparación.¡Buen provecho!")
    }else if response == false {
        assert(response == false, "Vuelve cuando tengas hambre")
    } else {
        print("Ingrese True si tiene hambre o FALSE si no tiene apetito")
    }
}
do{
    try makeASandwich(statusHambre: "false")
} catch {
    print("Notificaremos en un hora si tiene hambre")
}

var ji: UInt8 = 3
precondition(ji <= 4, "ji tiene que ser menor que 4")


/*
 Ejercicio 1:
 Crear un aplicacion donde pueda escribir el color de mi auto, la cantidad de puertas y marca.
 
 Ejercicio 2:
 Hacer una aplicación de peleas de campeones de league of legends donde tengangamos instanciados campeones, puede elegir campeones y que me diga quien gano.
 metodo campeon 1 vs campeon 2 que me diga cuál campeón ganó y su nombre
 
 Ejercicio 3:
 Hacer el menu de la cafetería
 y que un metodo me diga cuanto cuesta y cuanto tarda en hacerlo
 PD. Y que me diga una hora estimada a partir de cuando hice la consulta.
 [tip: tipo de dato date]
 
 ejercicio 4:
 Hacer un login
 Cuando ya se haya hecho el login Dar un mensaje de bienvenida.
 
*/
