import UIKit

/*Ejercicio 2
Ejercicio 2:
Hacer una aplicación de peleas de campeones de league of legends donde tengamos instanciados campeones, puede elegir campeones y que me diga quién gano.
método campeon 1 vs campeon 2 que me diga cuál campeón ganó y su nombre*/

class Champ{
    var name: String
    var attack: Int
    var armor: Int
    var maxHelth: Int
    init(name: String,
         attack: Int,
         armor: Int,
         maxHelth: Int){
        self.name = name
        self.attack = attack
        self.armor = armor
        self.maxHelth = maxHelth
    }
}

class statusFight{
    var winner: String
    var round: Int = 1
    init(winner: String){
        self.winner = winner
        
    }
    
    func fight(f1: Champ, f2: Champ) {
        //Mensaje de bienvenida y titulo
        print("________Bienvenidos a league Legends________")
        print("\(f1.name)            VS            \(f2.name)")
        
        //Aquí se da la batalla
        while f1.maxHelth > 0 && f2.maxHelth > 0{
            
            print("                   Round \(round) !")
            print("\(f1.name) health: ",f1.maxHelth,"      ","\(f2.name) health: ",f2.maxHelth)
            print()
            //Ataque del jugador 1
            f1.maxHelth -= f2.attack
            f1.maxHelth += f1.armor
            //Ataque del jugador 2
            f2.maxHelth -= f1.attack
            f2.maxHelth += f2.armor
            round += 1
        }
        //Se muestra quién fue el campeón victorioso
         if f1.maxHelth <= 0{
            f1.maxHelth = 0
            print("\(f1.name) health: ",f1.maxHelth,"      ","\(f2.name) health: ",f2.maxHelth)
            winner = "\(f2.name)"
            print("        El ganador fue: \(winner)")
        } else {
            f2.maxHelth = 0
            print("\(f1.name) health: ",f1.maxHelth,"      ","\(f2.name) health: ",f2.maxHelth)
            winner = "\(f1.name)"
            print("        El ganador fue: \(winner)")
        }
        
    }
}
//Se crean los campeones
var aatrox = Champ(name: "Aatrox", attack: 60, armor: 20, maxHelth: 800)
var garen = Champ(name: "Garen", attack: 50, armor: 25, maxHelth: 600)
var xhaya = Champ(name: "Xhaya", attack: 70, armor: 10, maxHelth: 500)

var fight1 = statusFight(winner: "Ganador")
fight1.fight(f1: garen, f2: xhaya)

