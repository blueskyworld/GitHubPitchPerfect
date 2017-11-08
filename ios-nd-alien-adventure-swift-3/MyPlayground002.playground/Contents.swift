//: Playground - noun: a place where people can play

import UIKit

func shortNameFromName(name: String) -> String {
    let lowercaseName = name.lowercased()
    var shortName = ""
    let vowelSet = CharacterSet(charactersIn:"aeiou")
    
    if let range = lowercaseName.rangeOfCharacter(from: vowelSet) {
        shortName = String(lowercaseName.suffix(from:(range.lowerBound)))
    }
    
    return shortName;
}
shortNameFromName(name: "This ")

func lyricsForName(lyricsTemplate: String, fullName: String) -> String {
    let shortName = shortNameFromName(name: fullName)
    
    let lyrics = lyricsTemplate
        .replacingOccurrences(of: "<FULL_NAME>", with: fullName)
        .replacingOccurrences(of: "<SHORT_NAME>", with: shortName)
    
    return lyrics
}

let bananaFanaTemplate = [
    "<FULL_NAME>, <FULL_NAME>, Bo B<SHORT_NAME>",
    "Banana Fana Fo F<SHORT_NAME>",
    "Me My Mo M<SHORT_NAME>",
    "<FULL_NAME>"].joined(separator: "\n")

print(lyricsForName(lyricsTemplate: bananaFanaTemplate, fullName: "Felix"))
