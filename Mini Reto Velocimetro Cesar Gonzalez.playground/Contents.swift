//: Mini Reto Velocimetro Cesar Gonzalez Semana 4


import UIKit



// Declara la enumeración: Velocidades, sus valores serán de tipo Int.
enum Velocidades : Int {
    // Elementos de la enumeracion declarada como Velocidades
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
// Inicializador de velocidades
    init(velocidadInicial : Velocidades ) {
      self = velocidadInicial
        
}
}
 // Declara la Clase Auto con atribotos : Variable llamada velocidad que es instancia de la enumeracion Velocidades
class Auto {
    var velocidad : Velocidades
    // Inicializador del velocimetro en Apagado
    init (){
        velocidad = Velocidades ( velocidadInicial : .Apagado)
        
    }
    // Funcion para el cambio de velocidad
    func cambioDeVelocidad() -> ( actual : Int, velocidadEnCadena :String){
        
        // atributos para la impresion final
        var leyenda = ""
        let actual = velocidad.rawValue
       
      //switch para el cambio de estado de nuestra variable dentro de la funcion Cambio de velocidad
        switch velocidad {
        case .Apagado:
            velocidad = .VelocidadBaja
            leyenda = "Apagado"
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            leyenda = "Velocidad Baja"
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            leyenda = "Velocidad Media"
        case .VelocidadAlta:
            velocidad = .Apagado
            leyenda = "Velocidad Alta"
        }
        return (actual, leyenda)
    }
    
    
}

// Prueba para revisar el funcionamiento del cambio de velocidades del velocimetro

let auto = Auto()
for i in 1...20 {
    let result = auto.cambioDeVelocidad()
    print("\(i). \(result.actual), \(result.velocidadEnCadena)")
}




