//
//  randomNumberGenerator.swift
//  numberBaseball
//
//  Created by Suzie Kim on 3/20/25.
//

import Foundation

class RandomNumberGenerator {
    func generateRandomNumbers() -> [Int] {
        var numberSet = Set<Int>()
        
        while numberSet.count < 3 {                         // 3개가 모일 때까지 반복
            let randomNumber = Int.random(in: 1...9)     // 1~9 사이의 랜덤 숫자 생성
            numberSet.insert(randomNumber)          // 중복되지 않도록 Set 사용
        }
        
        return Array(numberSet)                  // Set을 배열로 변환하여 반환
    }
}

