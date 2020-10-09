import UIKit

/*Dos invitaciones. Boda y quince años
 Tipo de evento
 Titulo
 Subtitulo
 descripción
 color
 imagen
 imprimir en un print
 Invitación pequeña (titulo y subtitulo)
 */
/*
class Card {
    var tittle: String?
    var subTittle: String?
}

class InvitationCard: Card {
    var tipoDeEvento: String
    var description: String
    var titleInv: String
    
    override var tittle: String? {
        get {
            return titleInv
        }
        set {
            super.tittle = newValue
        }

    }
    
    init(tipoDeEvento:String,
         description:String,
         titleInv: String) {
        self.tipoDeEvento = tipoDeEvento
        self.description = description
        self.titleInv = titleInv
    }
    
    
    func printing(){
        
        Print(pri: "\(tipoDeEvento)")
    
        if let sTittle = tittle {
            Print(pri: "\(sTittle)")
            
        }
        Print(pri: "\(subTittle ?? "")")
        Print(pri: "\(description)")
        
    }
    
    func Print (pri: String){
          print("&&&&&&&&  \(pri)  &&&&&&&&")
     }
    
    
}


class MiniBoleto: Card {
    //var numberOfGuest : String
    
    //init(ti)
    
    func imprimirMiniCarta(){
                print("|___________Mini Carta___________|")
                if let sTittle = tittle {
                        
                           print(sTittle,subTittle!)
                      }
               
                print("|________________________________|")
    }
    
}

var boda = InvitationCard(tipoDeEvento: "Boda", description: "Boda gitana", titleInv: "Fish2")
var miniCartaBoda = MiniBoleto()
miniCartaBoda.tittle = "Test"
miniCartaBoda.subTittle = "Test2"

boda.printing()
miniCartaBoda.imprimirMiniCarta()




*/

/*Clase que sea de campeones que tengan
 ataque
 desfensa
 nombre
 descripción
 Ultimate
 categorizados por ciudad de procedencia
 mostrar cuantos campeones por procedencia
*/

var joniaCitizens = 0
var demaciaCitizens = 0
var piltoverCitizens = 0

class Champ {
    var attack: Int
    var defense: Int
    var name: String
    var description: String
    var ultimate: String
    var city: CityType
    
    init(attack: Int,
         defense: Int,
         name: String,
         description: String,
         ultimate: String,
         city: CityType){
        self.attack = attack
        self.defense = defense
        self.name = name
        self.description = description
        self.ultimate = ultimate
        self.city = city
        
    }
    func assignPlayerToCity(){
        switch city {
        case .Jonia:
            joniaCitizens += 1
        case .Demacia:
            demaciaCitizens += 1
        case .Piltover:
            piltoverCitizens += 1
        }
    }
    
}


enum CityType {
    case Jonia
    case Demacia
    case Piltover
}

var rakan = Champ(attack: 77, defense: 30, name: "Rakan", description: "Con un carácter tan impulsivo como encantador, Rakan es un infame alborotador vastaya y el mejor bailarín de batalla de la historia tribal de Lhotlan. Para los humanos de las montañas de Jonia, su nombre siempre ha sido sinónimo de festivales desenfrenados, fiestas sin control y caos musical. Pocos sospecharían que este artista viajero y dinámico es la pareja de la rebelde Xayah y que también apoya su causa", ultimate: "Obtiene velocidad de movimiento y hechiza e inflige daño mágico a los enemigos que toque.", city: .Jonia)

//rakan.assignPlayerToCity()

let xaya = Champ(attack: 0, defense: 1, name: "Xaya", description: "Son una gran ADC", ultimate: "Hojas voladoras", city: .Piltover)

let jayce = Champ(attack: 0, defense: 1, name: "Jayce", description: "Son una gran ADC", ultimate: "Hojas voladoras", city: .Piltover)
let garen = Champ(attack: 70, defense: 40, name: "Garen", description: "too strong", ultimate: "Poder de Demacia", city: .Demacia)

//jayce.assignPlayerToCity()
//
//xaya.assignPlayerToCity()

//struct ChampViewModel {
//    var champFullDescription: String
//}
//
//let showFullDescriptionChamps = ChampViewModel(champFullDescription: showChampDescription())
//
//func showChampDescription() -> String {
//    return "Name: \(rakan.name), Descripcion: \(rakan.description)"
//}
//
//print(showFullDescriptionChamps.champFullDescription)


var champs = [Champ]()
champs.append(rakan)
champs.append(jayce)
champs.append(xaya)

//let piltoverChamps = champs.filter { (champ) -> Bool in
//    champ.city  == .Piltover
//}
//print(piltoverChamps.count)
//var countador = 0
//for cham in champs {
//    if cham.city == .Piltover {
//     countador += 1
//    }
//}


class CityChamps{
    var cityName: String
    var cityChamps: [Champ]
    
    init(cityName: String,
         cityChamps: [Champ]) {
        self.cityName = cityName
        self.cityChamps = cityChamps
    }
}

var ciChamps = CityChamps(cityName: "Demacia", cityChamps: [garen])
var ciChamps2 = CityChamps(cityName: "Piltover", cityChamps: [jayce])
var ciChamp3 = CityChamps(cityName: "Jonia", cityChamps: [xaya, rakan])

var arrayCityChamps = [ciChamp3]
arrayCityChamps += [ciChamps]
arrayCityChamps  += [ciChamps2]

for ci in arrayCityChamps {
    if ci.cityName == "Piltover" {
        print("Champs Piltover: \(ci.cityChamps.count)")
    } else if ci.cityName == "Demacia" {
        print(" Champs Demacia: \(ci.cityChamps.count)")
    } else if ci.cityName == "Jonia" {
        print(" Champs Jonia: \(ci.cityChamps.count)")
    }
}


//print("\(citChamps.cityName)")

//print("Champs Piltover : \(countador)")


//
//print("Jonia tiene \(joniaCitizens) campeones")
//print("Demacia tiene \(demaciaCitizens) campeones")
//print("Piltover tiene \(piltoverCitizens) campeones")





