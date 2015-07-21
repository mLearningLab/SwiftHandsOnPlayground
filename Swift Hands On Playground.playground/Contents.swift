//: # Swift Hands On Playground
//: ### by Alberto Pacheco
//: ### alberto@acm.org
//: ### Nearsoft - July 2015 - ver. 1.2
//: -----
//: ## 1.1 MI PRIMER PROGRAMA
//: Como dicta la tradición, tu primer programa en Swift
//: sirve para imprimir **"Hola Mundo!"** solo se
//: requiere **una línea** para escribir este programa:
println("Hola Mundo!")
//: A diferencia de otros lenguajes, como Java y C/C++, **no** es necesario:
//: * Definir una función y/o clase, e.g. *main()*
//: * Importar alguna librería para imprimir, e.g. *<sdtio.h>*
//: * Agregar punto-y-coma (;) al final de cada sentencia
//:
//: ## 1.2 DATOS
//: -----
//: ### 1.2.1 VARIABLES (var)
var precio = 1_200.00
var dólar = 15.75  // ó
var pesos = precio * dólar
//: Tipo de dato inferido (implícito)
//:
//: Regla: "Toda variable debe tener un valor inicial"
//:
//: Tipos: Bool, Int, UInt, Float, Double, Character, String
var sabes_programar = true  // Bool
var x1 = 3 / 2              // Int
var x2 = 3.0 / 2.0          // Double
var nombre = "Beto"         // String
//: ### 1.2.2 CONSTANTES (let)
import Darwin       // M_PI
let     π = M_PI    // Alt + p
let   hex = 0xFE0   // Hexadecimal
let   bin = 0b100   // Binary
let   oct = 0o20    // Octal
let  edad = 19
let radio = 2.5
//: __Int( )__ : Cast? Ctor?
let  area = Int(π * pow(radio,2))
//: Interpolación de texto
"El área del círculo es \(area)"
"Hola \(nombre)!"
"Has vivido \(edad * 365) días"
"El área real es \(π * pow(radio,2))"
//: ### 1.2.3 OPCIONALES
var captura_edad: Int? = 15

if captura_edad != nil {
    let tmp = captura_edad!
    "Has vivido \(12 * tmp) meses"
} else {
    "Error: edad incorrecta o en blanco!"
}
//: Caso #2 -- Usando __if let__
captura_edad =  15 // Try: nil

if let tmp = captura_edad {
    "Has vivido \(12 * tmp) meses"
} else {
    "Error: edad incorrecta o en blanco!"
}
//: ## 1.3 SENTENCIAS DE CONTROL
//: -----
//: ### 1.3.1 DECISION: SENTENCIA IF
var dato: String = "123" // Try: "A123"
if let d = dato.toInt() { // dato es opcional
    d + 10
} else {
    "Error"
}
//: ### 1.3.2 DECISION: SENTENCIA SWITCH
var p = 30 // Try me! Change p values

switch p {
case 10...20:
    println("10...20")
case 21..<30:
    println("21...29")
default:  // Error si no consideramos todos los casos
    "No esta en un rango, es \(p)"
}
//: ### 1.3.3 CICLO: SENTENCIA FOR
for i in 24..<30 { // View on Assitant Editor
    println(i)
}
for i in "Swift" { // View on Assitant Editor
    println(i)
}
for x in 0...100 {
    let d = Double(x)
    d * sin(d * M_PI/8) // Show result, click (+) icon
}
//: ### 1.3.4 FUNCIONES
func fib(n:Int) -> Int {
    switch n {
    case _ where n < 2: // "let p where p<2" or "case 0, 1:"
        return 1
    default:
        return fib(n-1) + fib(n-2)
    }
}
fib(-3)
for i in 1...9 {
    fib(i)
}
//: ## 1.4 ARREGLOS
var sec = [Int]()

for n in 1...6 {
    sec.append(fib(n))
}

sec.reverse()

var k = [Character]()
for x in "oracle".uppercaseString {
    k.insert(x, atIndex:0)
}
String(k)
//: ## EJERCICIOS
var t = ""
for s in 1...10 {
    t += "\(s)) Beto "
}
println(t)

var valores = "abcdefg"
var t2 = ""
for s in valores {
    t2 += "\(s)) Beto "
}
println(t2)

var costos = [2_135.50, 345.43, 117_235.25]
var t3 = ""
for s in costos {
    t3 += "$\(s), Beto, "
}
println(t3)
costos[0...1]

for var i=0; i<10; i++ {
    i
}
//: ## QUIZ
//: 1)
//: 2)
//: 3)
//: 4)
//: 5)
//: NOTA: No olvides mostrar editor asistente para ver la salida de consola
//:       ( View / Assistant Editor / Show Assistant Editor )
