//
//  util.swift
//  numberBaseball
//
//  Created by Suzie Kim on 3/20/25.
//

import Foundation

class InputValidator {
    static func isValidInput(_ input: String) -> Bool {
        // 입력값이 정확히 3자리 숫자인지 확인
        guard input.count == 3,
              input.allSatisfy({ $0.isNumber }),    // 모든 문자가 숫자인지 확인
              Set(input).count == 3 else {          // 중복된 숫자가 없는지 확인
            return false
        }
        return true
    }
}
