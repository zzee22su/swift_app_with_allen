//
//  main.swift
//  RandomBingo
//
//  Created by zzee22su on 2023/02/27.
//

import Foundation

var computerChoice = Int.random(in: 1...100)
var myChoice = 0

print("1~100 사이의 숫자를 입력해주세요\n")

while true {
    var userInput = readLine()
    
    if let input = userInput {
        if let number = Int(input) {
            myChoice = number
        }
    }
    
    if computerChoice > myChoice {
        print("UP")
    } else if computerChoice < myChoice {
        print("DOWN")
    } else {
        print("Bingo")
        break
    }
}

