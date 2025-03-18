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

print("3자리 숫자를 입력하세요:")
if let input = readLine() {
    print("입력한 값: \(input)")
}


func isValidInput(_ input: String) -> Bool {
                                                // 입력값이 정확히 3자리 숫자인지 확인
    guard input.count == 3,
          input.allSatisfy({ $0.isNumber }),    // 모든 문자가 숫자인지 확인
          Set(input).count == 3 else {          // 중복된 숫자가 없는지 확인
        return false
    }
    return true
}

/*
// 테스트
print(isValidInput("123"))  // true
print(isValidInput("199"))  // false (중복 숫자)
print(isValidInput("abc"))  // false (숫자가 아님)
print(isValidInput("10"))   // false (3자리가 아님)
*/

func getUserInput() -> String {
    while true {
        print("숫자를 입력하세요:")
        if let input = readLine(), isValidInput(input) {
            return input
        } else {
            print("!! 올바른 3자리 숫자를 입력해주세요.")
        }
    }
}

// 테스트
let userInput = getUserInput()
print("사용자 입력값: \(userInput)")

