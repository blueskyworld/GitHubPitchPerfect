//
//  ViewController.swift
//  Silly Song
//
//  Created by Ken Kremer on 10/23/17.
//  Copyright © 2017 Ken Kremer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var lyricsView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func reset(_ sender: Any) {
                nameField.text = ""
                lyricsView.text = ""
    }
    
    @IBAction func displayLyrics(_ sender: Any) {
        return   lyricsView.text = lyricsForName(lyricsTemplate: bananaFanaTemplate, fullName: nameField.text!)
    }
    
}
// MARK: - UITextFieldDelegate
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
       // print("resignFirstResponder")
        return false
    }
}


let bananaFanaTemplate = [
    "<FULL_NAME>, <FULL_NAME>, Bo B<SHORT_NAME>",
    "Banana Fana Fo F<SHORT_NAME>",
    "Me My Mo M<SHORT_NAME>",
    "<FULL_NAME>"].joined(separator: "\n")


func shortNameFromName(name: String) -> String {
    let lowercaseName = name.lowercased()
    var shortName = ""
    let vowelSet = CharacterSet(charactersIn:"aeiou")
    
    if let range = lowercaseName.rangeOfCharacter(from: vowelSet) {
        shortName = String(lowercaseName.suffix(from:(range.lowerBound)))
    }
    return shortName;
}

func lyricsForName(lyricsTemplate: String, fullName: String) -> String {
    let shortName = shortNameFromName(name: fullName)
    
    let lyrics = lyricsTemplate
        .replacingOccurrences(of: "<FULL_NAME>", with: fullName)
        .replacingOccurrences(of: "<SHORT_NAME>", with: shortName)
    // print("lyrics: \(lyrics)")
    return lyrics
}

