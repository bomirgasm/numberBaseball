//
//  main.swift
//  numberBaseball
//
//  Created by Suzie Kim on 3/18/25.
//

import Foundation



let gameManager = GameManager()
gameManager.startGame()

/*
let userInput = UserInput().getUserInput()
print("사용자 입력값: \(userInput)")

let userGuess = userInput.map { Int(String($0))! }

let result = StrikeBallChecker().checkStrikeAndBall(answer: randomNumbers, userGuess: userGuess)

if result.strike == 3 {
    print("정답입니다!")
} else if result.strike == 0 && result.ball == 0 {
    print("Nothing")
} else {
    print("\(result.strike) 스트라이크, \(result.ball) 볼")
}
*/
