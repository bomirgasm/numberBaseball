//
//  main.swift
//  numberBaseball
//
//  Created by Suzie Kim on 3/18/25.
//

import Foundation

func generateRandomNumbers() -> [Int] {
    var numberSet = Set<Int>()
    
    while numberSet.count < 3 {                         // 3개가 모일 때까지 반복
        let randomNumber = Int.random(in: 1...9)     // 1~9 사이의 랜덤 숫자 생성
        numberSet.insert(randomNumber)          // Set<Int>을 사용하여 중복된 숫자가 추가되지 않도록 처리
    }
    
    return Array(numberSet)                  // Set을 배열로 변환하여 반환
}

// 테스트
let randomNumbers = generateRandomNumbers()
print("랜덤 숫자: \(randomNumbers)")
