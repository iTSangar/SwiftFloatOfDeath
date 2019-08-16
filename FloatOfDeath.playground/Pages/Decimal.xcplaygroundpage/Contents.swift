//: [Previous](@previous)

import Foundation

/*:
 * [Ref 01](https://blog.skagedal.tech/2017/12/30/decimal-decoding.html)
 * [Ref 02](https://medium.com/wultra-blog/decoding-money-from-json-in-swift-d61a3fcf6404)
 * [Ref 03](https://code.tutsplus.com/tutorials/swift-from-scratch-an-introduction-to-functions--cms-22879)
 * [Ref 04](https://medium.com/@bellmar/is-cobol-holding-you-hostage-with-math-5498c0eb428b)
 * [Ref 05](https://hackaday.com/2015/10/22/an-improvement-to-floating-point-numbers/)
 * [Ref 06](https://bugs.swift.org/browse/SR-6421)
 * [Ref 07](https://bugs.swift.org/browse/SR-5961)
 * [Ref 07](https://bugs.swift.org/browse/SR-7054)
 * [Ref 08🔸](https://github.com/apple/swift/pull/15474)
 * [Ref 09](https://medium.com/swift-programming/creating-a-money-type-in-swift-3b060fb762ed)
 * [Ref 10](https://benscheirman.com/2017/06/swift-json/)
 * [Ref 11](https://www.jessesquires.com/blog/floating-point-swift-ulp-and-epsilon/)
 * [Ref 12](https://www.h-schmidt.net/FloatConverter/IEEE754.html)
 * [Ref 13](https://medium.com/swift-programming/creating-a-money-type-in-swift-3b060fb762ed)
 * [Ref 14🔸](https://github.com/Qata/MonadicJSON)
 * [Ref 15🔸](http://www.cpgg.ufba.br/pessoal/reynam/Curso_HPC_2016_1/3-Ponto_Fixo_e_Ponto_Flutuante.pdf)
 
 */

var str = "Hello, playground"

let x = 607.56

/////////////////////////////////////////////////////////////////////
let w3 = "🔥 native values"

let strii: String = String(x)

let desc = Decimal(string: strii)
let desci = Decimal(floatLiteral: x)
let descii = Decimal(x)

desc
desci
descii

/////////////////////////////////////////////////////////////////////
let w4 = "🔥 operations"

(0.1 + 0.2)// == 0.3
print("\(0.1 + 0.2)")

0.2222 - 0.2221

/////////////////////////////////////////////////////////////////////
let w5 = "🔥 rounding value"

let scale = 2

var val1 = Decimal(x)
var val2 = Decimal(x)

var roundedVal1 = Decimal()
var roundedVal2 = Decimal()

NSDecimalRound(&roundedVal1, &val1, scale, NSDecimalNumber.RoundingMode.plain)
NSDecimalRound(&roundedVal2, &val2, scale, NSDecimalNumber.RoundingMode.bankers)

roundedVal1
roundedVal2

/////////////////////////////////////////////////////////////////////
let w6 = "🔥 using NSDecimalNumber"

let vDouble = NSDecimalNumber(value: x)
let vString = NSDecimalNumber(string: "1285.32")
let vMantisa: NSDecimalNumber = NSDecimalNumber(mantissa: 128532, exponent: -2, isNegative: false)

var z = 0
z + 1
z - 1
z
