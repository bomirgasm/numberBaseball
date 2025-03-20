//
//  StrikeBallCheck.swift
//  numberBaseball
//
//  Created by Suzie Kim on 3/20/25.
//

import Foundation

class StrikeBallChecker {
    func checkStrikeAndBall(answer: [Int], userGuess: [Int]) -> (strike: Int, ball: Int) {
        var strike = 0
        var ball = 0
        
        for i in 0..<3 {
            if userGuess[i] == answer[i] {
                strike += 1  // 같은 위치에 같은 숫자가 있으면 스트라이크 증가
            } else if answer.contains(userGuess[i]) {
                ball += 1  // 숫자가 존재하지만 위치가 다르면 볼 증가
            }
        }
        
        return (strike, ball)
    }
}
