import Foundation

/*
 
 Swift performs type-checking / type interference during compile-time.

 All types in Swift have capitalized names.
 
 
 Integers:
 
 Signed integers - positive, zero, negative
 Unsigned integers - positive, zero
 
 Use type Int for integer values unless you need a specific size of integer. This helps with code consistency and interoperability.
 
 Use type UInt only if you specifically need an unsigned integer types with the same size as the current platform's native word size. If this isn’t the case, Int is preferred, even when the values to be stored are known to be nonnegative.
 
 Integers are available in 8, 16, 32 and 64 bit forms. An 8-bit unsigned integer is of type UInt8 and a 32-bit signed integer is of type Int32.
 
 Swift provides two additional integer types, Int and UInt, which have the same size as the current platform's native word size:
 - On a 32-bit platform, Int/UInt is the same size as Int32/UInt32
 - On a 64-bit platform, Int/UInt is the same size as Int64/Uint64
 
 
 Floating-Point Numbers:
 
 Swift provides two signed floating-point number types:
 - Float represents a 32-bit floating-point number and has a precision of at least 15 decimal digits
 - Double represents a 64-bit floating-point number and has a precision of as little as 6 decimal digits
 
 Double is preferred in situations where either type would be appropriate. Swift defaults to Double for floating-point numbers.
 Float takes up less space in memory and is therefore preferred if memory optimization plays a role.
 
 
 Numeric Type Conversion:
 
 Differentiate numeric constants and variables / numeric literals.
 Numeric literals don't have an explicit type in and of themselves. Their type is inferred only at compile-time (when assigned to a constant or variable).
 
 To convert numeric types, you need to opt in to numeric type conversion on a case-by-case basis. This prevents hidden conversion errors and makes type conversion intentions explicit.
 
 Use SomeType(ofInitialValue) - call the initializer of a Swift type and pass in an initial value.
 
 Integer and Floating-Point Conversion:
 
 Conversion between integer / floating-point numeric types and vice versa must be made explicit.
 
 
 Type Aliases:
 
 Useful when you want to refer to an existing type by a name that’s contextually more appropriate.
 
 
 Booleans:
 
 Are referred to as logical types, because they can only ever be true or false.
 
 
 Tuples:
 
 Group multiple values into a single compound value. Particularly useful as the return values of functions.
 The values within a tuple can be of any type and don’t have to be of the same type as each other.
 
 Use for simple groups of related values.
 
 You can name the individual elements in a tuple.
 
 Access values in a tuple:
 - Decompose into separate constants and variables
    - Ignore parts of the tuple with an underscore
 - Access the individual element values using index numbers starting at zero / element names
 
 */

/*
 
 Numeric Type Conversion

 */
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
// Behind the scenes, UInt16 has an initializer that accepts a UInt8 value, and so this initializer is used to make a new UInt16 from an existing UInt8. You can’t pass in any type here, however—it has to be a type for which UInt16 provides an initializer.
let twoThousandAndOne = twoThousand + UInt16(one)

let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine

// Floating-point values are always truncated when used to initialize a new integer value in this way. This means that 4.75 becomes 4, and -3.9 becomes -3.
let integerPi = Int(pi)

/*
 
 Type Aliases

 */
// Here, e.g. a type alias is used for data of a specific size from an external source.
typealias AudioSample = UInt16
let maxAmplitudeFound = AudioSample.min

/*
 
 Tuples

 */
let http404Error = (404, "Not Found") // is of type (Int, String)
let numbers = (first: 100, second: 200, third: 300)

let (statusCode, statusMessage) = http404Error
statusCode
statusMessage

let (_, _, thirdNumber) = numbers
thirdNumber

http404Error.0
numbers.third
