import Foundation

/*
 
 Optionals can have values within them.
 
 An optional represents two possibilities:
 - there is a value of that type
 - there isn't a value at all
 
 You can unwrap the optional to access that value.
 
 
 The value nil:
 
 You set an optional variable to a valueless state by assigning it the special value nil.
 
 In Swift, nil isn’t a pointer—it’s the absence of a value of a certain type.
 Optionals of any type can be set to nil, not just object types.
 
 
 If Statements and Forced Unwrapping:
 
 Use an if statement to find out whether an optional contains a value by comparing against nil.
 
 Once you are sure the optional does contain a value, access its underlying value by adding an exclamation point (!) to the end of the optional’s name.
 This is known as "forced unwrapping" of the optional’s value.
 
 
 Optional Binding:
 
 Use with if and while statements to find out whether an optional contains a value, and if so, to make that value available as a temporary constant or variable.
 The constants and variables created are available only within the body of the statement.
 
 If you don’t need to refer to the original, optional constant or variable after accessing the value it contains, you can use the same name for the new constant or variable.
 
 You can include as many optional bindings and Boolean conditions in a single if statement as you need to, separated by commas.
 The whole if condition evaluates to false if any of the values in the optional bindings are nil or any Boolean condition evaluates to false.
 
 
 Implicitly Unwrapped Optionals:
 
 Use when an optional will always have a value, immediately after that value is first set. Removes the need to check and unwrap the optional’s value every time it’s accessed. The primary use is during class initialization.
 
 Rather than placing an exclamation point after the optional’s name when you use it (forced unwrapping), you place an exclamation point after the optional’s type when you declare it.
 
 An implicitly unwrapped optional is a normal optional behind the scenes, but can, after it's been initialized, be used like a non-optional value.
 Swift first tries to use it as an ordinary optional value; if it can’t be used as an optional, Swift force-unwraps the value.
 
 */

let possibleNumber = "123"
// Swift’s Int type has an initializer which tries to convert a String value into an Int value. However, not every string can be converted into an integer thus the inferred type is an optional.
let convertedNumber = Int(possibleNumber) // is inferred to be of type "Int?"

/*
 
 The value nil
 
 */
var serverResponseCode: Int? = 404
// You can’t use nil with non-optional constants and variables.
serverResponseCode = nil

// Optional variables without a value default to nil.
var surveyAnswer: String?

/*
 
 If Statements and Forced Unwrapping
 
 */
if convertedNumber != nil {
    // WATCH OUT: Trying to use ! to access a nonexistent optional value triggers a runtime error.
    "convertedNumber has an integer value of \(convertedNumber!)." // The exclamation point effectively says, “I know that this optional definitely has a value; please use it.”
}

/*
 
 Optional Binding
 
 */
// If the conversion is successful, the actualNumber constant becomes available for use within the first branch of the if statement.
if let actualNumber = Int(possibleNumber) { // in contrast to forced unwrapping
    "The string \"\(possibleNumber)\" has an integer value of \(actualNumber)"
} else {
    "The string \"\(possibleNumber)\" couldn't be converted to an integer"
}

let myNumber = Int(possibleNumber)
type(of: myNumber)
if let myNumber = myNumber {
    type(of: myNumber)
    "My number is \(myNumber)"
}
type(of: myNumber)

if var myNumber = myNumber {
    myNumber = 456
    "My number is \(myNumber)"
}
myNumber

if let myNumber { // shorthand for "let myNumber = myNumber"
    "My number is \(myNumber)"
}

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    "\(firstNumber) < \(secondNumber) < 100"
}

/*
 
 Implicitly Unwrapped Optionals
 
 */
let possibleString: String? = "An optional string."
let forcedString: String = possibleString!
let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString

let optionalString = assumedString
type(of: optionalString)

// You can check whether an implicitly unwrapped optional is nil or use it with optional binding.
if assumedString != nil {
    assumedString
}
if let definiteString = assumedString {
    definiteString
}
