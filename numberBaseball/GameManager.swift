//
//  GameManager.swift
//  numberBaseball
//
//  Created by Suzie Kim on 3/20/25.
//

import Foundation

class GameManager {
    private let randomNumberGenerator = RandomNumberGenerator()
    private let userInputHandler = UserInput()
    private let strikeBallChecker = StrikeBallChecker()

    func startGame() {
        let answer = randomNumberGenerator.generateRandomNumbers()
        var attempts = 0
        print("랜덤 숫자: \(answer)")
        print("< 게임을 시작합니다 >")

        while true {
            let userInput = userInputHandler.getUserInput()
            let userGuess = userInput.map { Int(String($0))! }
            attempts += 1

            let result = strikeBallChecker.checkStrikeAndBall(answer: answer, userGuess: userGuess)

            if result.strike == 3 {
                print("🎉 정답입니다! 총 \(attempts)번 시도했습니다.")
                break
            } else if result.strike == 0 && result.ball == 0 {
                print("Nothing")
            } else {
                print("\(result.strike) 스트라이크, \(result.ball) 볼")
            }
        }
    }
}
