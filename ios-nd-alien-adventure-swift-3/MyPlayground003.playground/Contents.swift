//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"

let str = "Hello, world!"
let index = str.index(str.startIndex, offsetBy: 4)
str[index] // returns Character 'o'

let endIndex = str.index(str.endIndex, offsetBy:-2)
str[index ..< endIndex] // returns String "o, worl"

String(str.suffix(from: index)) // returns String "o, world!"
String(str.prefix(upTo: index)) // returns String "Hell"
