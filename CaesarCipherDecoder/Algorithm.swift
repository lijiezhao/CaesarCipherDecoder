//
//  Algorithm.swift
//  CaesarCipherDecoder
//
//  Created by Lijie Zhao on 9/19/17.
//  Copyright © 2017 Lijie Zhao. All rights reserved.
//

import Foundation

let alpha = "abcdefghijklmnopqrstuvwxyz"
let alphaArr = Array(alpha)

func decode(input:String) -> [String] {
    var possibles = [String]()
    let inputArr = Array(input.lowercased())
    
    for index in 0...25 {
        var newLine = ""
        
        for inp in inputArr {
            let newIndex = (alphaArr.index(of: inp)! + index) % 26
            newLine.append(alphaArr[newIndex])
        }
        
        possibles.append(newLine)
    }
    
    return possibles
}
