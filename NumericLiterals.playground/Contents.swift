import Foundation

/*
 
 Integer literals can be written as:
 - A decimal number, with no prefix
 - A binary number, with a "0b" prefix
 - An octal number, with a "0o" prefix
 - A hexadecimal number, with a "0x" prefix
 
 
 Floating-point literals can be written as:
 - A decimal number, with no prefix
 - A hexadecimal number, with a "0x" prefix
 and must always have a number (or hexadecimal number) on both sides of the decimal point.
 
 Decimal floats can have an optional exponent, indicated by an uppercase or lowercase e.
 With an exponent of "exp", the base number is multiplied by 10^exp. For example, 1.25e2 means 1.25 x 10^2, or 125.0.
 
 Hexadecimal floats must have an exponent, indicated by an uppercase or lowercase p.
 With an exponent of "exp", the base number is multiplied by 2^exp. For example, 0xFp2 means 15 x 2^2, or 60.0.
 
 
 Both integers and floating-point numbers can be padded with extra zeros and can contain underscores to help with readability
 
 */

/*
 
 Integer literals
 
 */
let decimalInteger = 17
let binaryInteger = 0b10001       // 17 in binary notation
let octalInteger = 0o21           // 17 in octal notation
let hexadecimalInteger = 0x11     // 17 in hexadecimal notation

/*
 
 Floating-point literals
 
 */
let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1
