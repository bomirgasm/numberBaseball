//
//  main.swift
//  numberBaseball
//
//  Created by Suzie Kim on 3/18/25.
//

import Foundation


let randomNumbers = RandomNumberGenerator().generateRandomNumbers()
print("랜덤 숫자: \(randomNumbers)")


let userInput = UserInput().getUserInput()
print("사용자 입력값: \(userInput)")
