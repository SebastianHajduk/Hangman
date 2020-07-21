//
//  ViewController.swift
//  Hangman
//
//  Created by Sebastian on 21/07/2020.
//  Copyright © 2020 Sebastian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Hidden word
    @IBOutlet weak var hiddenWordLabel: UILabel!
    
    // Play against computer
    @IBOutlet weak var computerLabel: UILabel!
    
    @IBOutlet weak var easyGame: UIButton!
    
    @IBOutlet weak var mediumGame: UIButton!
    
    @IBOutlet weak var hardGame: UIButton!
    
    // Play with friends
    @IBOutlet weak var friendsLabel: UILabel!
    
    @IBOutlet weak var wordTextField: UITextField!
    
    @IBOutlet weak var playButton: UIButton!
    
    // Keyboard
    @IBOutlet weak var QKeyboard: UIButton!
    
    @IBOutlet weak var WKeyboard: UIButton!
    
    @IBOutlet weak var EKeyboard: UIButton!
    
    @IBOutlet weak var RKeyboard: UIButton!
    
    @IBOutlet weak var TKyboard: UIButton!
    
    @IBOutlet weak var YKeyboard: UIButton!
    
    @IBOutlet weak var UKeyboard: UIButton!
    
    @IBOutlet weak var IKeyboard: UIButton!
    
    @IBOutlet weak var OKeyboard: UIButton!
    
    @IBOutlet weak var PKeyboard: UIButton!
    
    @IBOutlet weak var AKeyboard: UIButton!
    
    @IBOutlet weak var SKeyboard: UIButton!
    
    @IBOutlet weak var DKeyboard: UIButton!
    
    @IBOutlet weak var FKeyboard: UIButton!
    
    @IBOutlet weak var GKeyboard: UIButton!
    
    @IBOutlet weak var HKeyboard: UIButton!
    
    @IBOutlet weak var JKeyboard: UIButton!
    
    @IBOutlet weak var KKeyboard: UIButton!
    
    @IBOutlet weak var LKeyboard: UIButton!
    
    @IBOutlet weak var ZKeyboard: UIButton!
    
    @IBOutlet weak var XKeyboard: UIButton!
    
    @IBOutlet weak var CKeyboard: UIButton!
    
    @IBOutlet weak var VKeyboard: UIButton!
    
    @IBOutlet weak var BKeyboard: UIButton!
    
    @IBOutlet weak var NKeyboard: UIButton!
    
    @IBOutlet weak var MKeyboard: UIButton!
    
    // Helping tools
    
    @IBOutlet weak var invisibleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func playAction(_ sender: Any) {
        playWithFriends()
    }
    
    // Keyboard functions
    
    @IBAction func checkA(_ sender: Any) {
        checkLetter("a")
        checkLetter("A")
    }
    
    @IBAction func qKey(_ sender: Any) {
        checkLetter("q")
        checkLetter("Q")
    }
    
    @IBAction func wKey(_ sender: Any) {
        checkLetter("w")
        checkLetter("W")
    }
    
    @IBAction func eKey(_ sender: Any) {
        checkLetter("e")
        checkLetter("E")
    }
    
    @IBAction func rKey(_ sender: Any) {
        checkLetter("r")
        checkLetter("R")
    }
    
    @IBAction func tKey(_ sender: Any) {
        checkLetter("t")
        checkLetter("T")
    }
    
    @IBAction func yKey(_ sender: Any) {
        checkLetter("y")
        checkLetter("Y")
    }
    
    @IBAction func uKey(_ sender: Any) {
        checkLetter("u")
        checkLetter("U")
        
        }
    
    @IBAction func iKey(_ sender: Any) {
        checkLetter("i")
        checkLetter("I")
    }
    
    @IBAction func oKey(_ sender: Any) {
        checkLetter("o")
        checkLetter("O")
    }
    
    @IBAction func pKey(_ sender: Any) {
        checkLetter("p")
        checkLetter("P")
    }
    
    @IBAction func sKey(_ sender: Any) {
        checkLetter("s")
        checkLetter("S")
    }
    
    @IBAction func dKey(_ sender: Any) {
        checkLetter("d")
        checkLetter("D")
    }
    
    @IBAction func fKey(_ sender: Any) {
        checkLetter("f")
        checkLetter("F")
    }
    
    @IBAction func gKey(_ sender: Any) {
        checkLetter("g")
        checkLetter("G")
    }
    
    @IBAction func hKey(_ sender: Any) {
        checkLetter("h")
        checkLetter("H")
    }
    
    @IBAction func jKey(_ sender: Any) {
        checkLetter("j")
        checkLetter("J")
    }
    
    @IBAction func kKey(_ sender: Any) {
        checkLetter("k")
        checkLetter("K")
    }
    
    @IBAction func lKey(_ sender: Any) {
        checkLetter("l")
        checkLetter("L")
    }
    
    @IBAction func zKey(_ sender: Any) {
        checkLetter("z")
        checkLetter("Z")
    }
    
    @IBAction func xKey(_ sender: Any) {
        checkLetter("x")
        checkLetter("X")
    }
    
    @IBAction func cKey(_ sender: Any) {
        checkLetter("c")
        checkLetter("C")
    }
    
    @IBAction func vKey(_ sender: Any) {
        checkLetter("v")
        checkLetter("V")
    }
    
    @IBAction func bKey(_ sender: Any) {
        checkLetter("b")
        checkLetter("B")
    }
    
    @IBAction func nKey(_ sender: Any) {
        checkLetter("n")
        checkLetter("N")
    }
    
    @IBAction func mKey(_ sender: Any) {
        checkLetter("m")
        checkLetter("M")
    }
    
    func playWithFriends() {
        hiddenWordLabel.text = ""
        invisibleLabel.text = ""
        let word = Array(wordTextField.text!)
        let characters = Array(word)
        
        
        for char in characters {
            hiddenWordLabel.text = hiddenWordLabel.text! + "_ "
            invisibleLabel.text = invisibleLabel.text! + "\(char) "
        }
        
    }

    func playWithComputer() {
        hiddenWordLabel.text = ""
        invisibleLabel.text = ""
        
    }
    
    func getEasy() {
        
    }
    
    func checkLetter(_ letter: Character) {
        let word = invisibleLabel.text!
        let characters = Array(word)
        var hiddenWord = Array(hiddenWordLabel.text!)
        let i = characters.count
        var n = 0
        
        for char in characters {
            
            while n < i + 8 {
                // Checking that 'n' is not comparing with separator
                if hiddenWord[n] != " " {
                    
                    if letter == char {
                        // If word has letter, show it
                        hiddenWord[n] = letter
                        let hiddenWordSTR = Array(hiddenWord).map{String($0)}
                        hiddenWordLabel.text = hiddenWordSTR.joined(separator: "")
                        n += 1
                        break
                        
                    } else {
                        // Else just skip into next letter
                        n += 1
                        break
                        
                    }
                } else {
                    n += 1
                    break
                }
            }
        }
        
    }
    
}

