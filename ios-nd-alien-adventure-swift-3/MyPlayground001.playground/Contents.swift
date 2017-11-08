//: Playground - noun: a place where people can play
import Foundation

// Exercise 1

//Reverse the string below and create a new string, called <backwardsString> from the result.
var forwardString = "strssessed"
var backwardsString = String(forwardString.characters.reversed())

// Exercise 2
// Write a program that deletes all occurrences of the word "like" in the following string.
// Create a new string, called <noLikes>
var lottaLikes = "If like, you wanna learn Swift like, you should build lots of small apps, cuz it's like, a good way to practice."
var noLikes = String(lottaLikes.replacingOccurrences(of: " 3like", with: ""))

print(backwardsString)
print(noLikes)
