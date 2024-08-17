//
//  tms_operators.swift
//  
//
//  Created by Shafayet Ul Islam on 17/8/2024.
//

import Foundation

// all about operators

// 3 types of operator in Swift
// 1. Unary Pre-fix
let foo = !true // here the ! sits before the true and negates it, so now the value is false

// 2. Unary Post-fix
let name = Optional("Shafayet")
print(type(of: name))
let unaryPostFix = name! // grabs the value from the optional and assigns it in another let constant
print(unaryPostFix)
print(type(of: unaryPostFix))
// 3. Binary In-fix
let res = 1+2

// ternary operators
let age = 15
//let msg = CONDITION ? VALUE IF CONDITION IS MET : VALUE IF CONDITOON IS NOT MET

let msg = age >= 18 ? "you are an adult" : "you are not an adult"
print(msg)
