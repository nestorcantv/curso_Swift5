import UIKit

var tupla = ("hola", "que onda")
var (gretting, queobas) = tupla

class Card {
    var name: cards
    var hasBeenMatched: Bool
    var hasBeenFlepted: Bool
    init(name: cards,
         hasBeenMatched: Bool,
         hasBeenFlepted: Bool){
        self.name = name
        self.hasBeenMatched = hasBeenMatched
        self.hasBeenFlepted = hasBeenFlepted
    }
    
}


class Slot{
    var name: Slots
    var card: Card
    init(name: Slots,
         card: Card){
        self.name = name
        self.card = card
    }
}


enum Slots{
    case slot1
    case slot2
    case slot3
    case slot4
}


enum cards{
    case card1
    case card2
    case card3
    case card4
}


var card1 = Card(name: .card1, hasBeenMatched: false, hasBeenFlepted: false)
var card2 = Card(name: .card2, hasBeenMatched: false, hasBeenFlepted: false)
var card3 = Card(name: .card3, hasBeenMatched: false, hasBeenFlepted: false)
var card4 = Card(name: .card4, hasBeenMatched: false, hasBeenFlepted: false)
var slot1 = Slot(name: .slot1, card: <#T##Card#>)
var slot2 = Slot(name: .slot2, card: <#T##Card#>)
var slot3 = Slot(name: .slot3, card: <#T##Card#>)
var slot4 = Slot(name: .slot4, card: <#T##Card#>)

//var arrayCards: [String] =
//for slot in <#items#> {
//    <#code#>
//}
//var arrayTest = [card1]
//arrayTest.append(card2)
//arrayTest.append(card3)
//arrayTest.append(card4)
//var arraySlots = [slot1]
//arraySlots.append(slot2)
//arraySlots.append(slot3)
//arraySlots.append(slot4)
//for test in arraySlots{
//    print()
//}
