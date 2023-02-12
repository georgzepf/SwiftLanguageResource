import Foundation

/*
 
 var - ordinary variable
 let - constant variable ("The value of a 'let' constant can't be changed once it's set")
 
 Two different mutability concepts:
 - Mutating the variable itself (reassignment)
 - Mutating the variable internally (e.g. using .append on an Array)
 
 Structures are value types.
 Classes are reference types.
 
 If assigned to a "let" constant:
 - Value types are internally immutable and can't be reassigned
 - Reference types are internally mutable but can't be reassigned
 
 */

let myName = "Georg", yourName = "Foo"

var names = [
    myName,
    yourName
]
names.append("Bar")

var copyOfNames = names
copyOfNames.append("Baz")
names
copyOfNames

let oldArray = NSMutableArray(
    array: [
        myName,
        yourName
    ]
)
oldArray.add("Bar")

let referenceToOldArray = oldArray
referenceToOldArray.add("Baz")
oldArray
referenceToOldArray

// WATCH OUT: A function can mutate reference types being passed as parameters even if it does not look like it!
let oldArray2 = NSMutableArray(
    array: [
        myName,
        yourName
    ]
)
func mutateArray(_ array: NSArray) {
    let referenceToArray = array as! NSMutableArray
    referenceToArray.add("Baz")
}
mutateArray(oldArray2)
oldArray2
