숫자 야구 게임 (Number Baseball)

프로젝트 개요

Swift를 활용하여 터미널에서 실행되는 숫자 야구 게임을 구현합니다. 이 게임은 **1\~9까지의 서로 다른 숫자로 이루어진 3자리 정답을 맞추는 방식**으로 진행됩니다.

사용 기술

- **언어**: Swift 5.9
- **개발 환경**: Xcode (Command Line Tool)
- **기능**:
  - 랜덤한 3자리 숫자 생성
  - 사용자 입력 처리
  - 입력값 검증
  - 스트라이크 & 볼 판정
  - 게임 종료 및 기록 관리

## 프로젝트 구조 (로 하고 싶어요)

```
 NumberBaseball/
├──  Sources/
│   ├── main.swift        # 메인 실행 파일
│   ├── GameLogic.swift   # 게임 로직 구현
│   ├── InputHandler.swift # 사용자 입력 처리
│   ├── ScoreManager.swift # 점수 및 기록 관리
├── README.md
```

##  게임 진행 방식

1. 프로그램이 **1\~9까지의 서로 다른 3자리 숫자를 랜덤으로 생성**합니다.
2. 사용자가 3자리 숫자를 입력하고, 정답과 비교하여 **스트라이크 & 볼 개수를 출력**합니다.
   - 같은 숫자 & 같은 위치 → **스트라이크**
   - 같은 숫자지만 위치가 다름 → **볼**
   - 맞춘 숫자가 없으면 → **Nothing**
3. 사용자가 정답을 맞출 때까지 반복됩니다.
4. 정답을 맞추면 게임이 종료되고, 시도 횟수를 기록합니다.

##  기능 상세 설명

###  1. 랜덤한 3자리 숫자 생성 (Lv1)

```swift
func generateRandomNumbers() -> [Int] {
    var numberSet = Set<Int>()
    while numberSet.count < 3 {
        numberSet.insert(Int.random(in: 1...9))
    }
    return Array(numberSet)
}
```

- 1\~9 사이의 랜덤 숫자를 생성하며, **중복되지 않도록 **``**을 활용**
- 3개의 숫자가 나올 때까지 반복

###  2. 사용자 입력 처리 및 검증 (Lv2)

```swift
func isValidInput(_ input: String) -> Bool {
    guard input.count == 3,
      input.allSatisfy({ $0.isNumber }),
      Set(input).count == 3
    else {
      return false
    }
    return true
}
```

- 입력값이 **3자리 숫자인지 확인**
- **중복된 숫자가 없는지 검사**
- 잘못된 입력 시 다시 입력을 요청

### 3. 스트라이크 & 볼 판정 (Lv2)

```swift
func getHint(secret: [Int], userInput: [Int]) -> (strike: Int, ball: Int) {
    var strike = 0, ball = 0
    for (index, num) in userInput.enumerated() {
        if secret[index] == num {
            strike += 1
        } else if secret.contains(num) {
            ball += 1
        }
    }
    return (strike, ball)
}
```

- 같은 자리 같은 숫자 → **스트라이크** 증가
- 다른 자리지만 포함된 숫자 → **볼** 증가

##  실행 방법

1. Xcode에서 `main.swift`를 실행
2. 터미널에서 **3자리 숫자를 입력**하며 게임 진행
3. 정답을 맞추면 **게임 종료 및 기록 저장**

## 진행 상황 (과제 요구사항 반영 여부)

-

## 프로젝트 실행 방법

```bash
git clone https://github.com/내GitHub계정/NumberBaseball.git
cd NumberBaseball
swift run
```

