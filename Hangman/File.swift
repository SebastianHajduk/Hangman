//
//  File.swift
//  Hangman
//
//  Created by Sebastian on 21/07/2020.
//  Copyright © 2020 Sebastian. All rights reserved.
//

import Foundation

class Words {
    let easyWord = ["man", "girl", "woman", "kid", "car", "cat", "dog", "milk", "cow"]
    
    func getEasyWord() -> String? {
        let i = Int.random(in: 0...easyWord.count)
        var choosenWord = easyWord[i]
        
        return choosenWord
    }
}


