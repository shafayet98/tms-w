//
//  tms_variables.swift
//  
//
//  Created by Shafayet Ul Islam on 16/8/2024.
//

import Foundation

// let are immutable which means it cannot be changed later or re-assigned later
let name = "Audrie"
print("My name is \(name)")

//var is mutable
var age = 20
print("My age is \(age)")

var names = ["foo", "bar"]
//here we are mutating the content of the array which is possible because the it's VAR. if it was let it wouldn't be possible.
names.append("baz")
print(names)

// using let we cannot re-assign and also cannot mutate the internal value of a variable
// but with var we can do both

// value type and reference type

// value type means if you copy a variable only the content will get copied
// structures are value type, classes are reference type

let moreNames = ["foo", "bar"]
var moreNameCopy = moreNames
moreNameCopy.append("fish")
print(moreNames)
print(moreNameCopy)
// here the content of the moreNames got copied and the change in the copy version did not effect the moreNames variable


// NSMutableArray -> allows to change the immutability of a variable
let oldArray = NSMutableArray( array: ["FOO", "BAR"])
print(oldArray)
// even after using let we can modify the array because it's a NSMutable Array which is also reference type
var newArray = oldArray
newArray.add("QUX")
print(oldArray)
print(newArray)
// the oldArray will be modiefied too because it's reference type not value type

// another example with function ** following is a bad code example ** which should NOT be used
// NSMutableArray is the subclass of NSArray. So from the outside the code looks it takes NSArray which can be mutable but inside the array became internally mutable which is BAD CODE
let someArray = NSMutableArray( array: ["FOO", "BAR"])
func changeTheArray(_ array: NSArray){
    let array2 = array as! NSMutableArray
    array2.add("BIRD")
}
changeTheArray(someArray)
print(someArray)
// someArray changed because we are using reference type

// let -> we cannot re-assign the value (true for class or structure)
// let -> we cannot change the value of the variable (true only for structure)
