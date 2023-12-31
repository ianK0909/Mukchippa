//
//  RockScissorsPaperLogic.swift
//  RockPaperScissors
//
//  Created by MAC2020 on 2023/11/23.
//

import Foundation

func initPlayRockScissorsPaperGame() {
    displayRockScissorsPaperMenu()
    userInputReadLine()
}

private func getComputerRandomNumber() -> Int {
    return Int.random(in: 1 ... 3)
}

private func userInputReadLine() {
    while isWorkingRockScissorsPaper {
        let randomValue = getComputerRandomNumber()
        guard let inputValue = readLine() else { return }
        if let userInputNum = Int(inputValue), userInputNum >= 1 && userInputNum <= 3 {
            if isFlagMukchippa == true {
                print("묵찌빠 입력")
                compareMukchippa(userChoice: RockScissorsPaperCase(rawValue:userInputNum)!, computerChoice: RockScissorsPaperCase(rawValue:randomValue)!)
            }else {
                compareRockScissorsPaper(userChoice: RockScissorsPaperCase(rawValue:userInputNum)!, computerChoice: RockScissorsPaperCase(rawValue:randomValue)!)
            }
        } else if let userInputNum = Int(inputValue), userInputNum == 0 {
            print(StringNameSpace.endMessage)
            isWorkingRockScissorsPaper = false
        } else {
            print(StringNameSpace.inputErrorMessage)
            isTrunFlag = false
        }
    }
}

private func compareRockScissorsPaper(userChoice: RockScissorsPaperCase, computerChoice: RockScissorsPaperCase) {
    switch (userChoice, computerChoice) {
    case (.scissors, .paper), (.rock, .scissors), (.paper, .rock):
        print(StringNameSpace.winMessage)
//        print(StringNameSpace.endMessage)
       // isWorkingRockScissorsPaper = false
        isFlagMukchippa = true
        isTrunFlag = true
        displayMukchippaMenu()
        print("묵찌빠 진입")
    case (.paper, .scissors), (.scissors, .rock), (.rock, .paper):
        print(StringNameSpace.loseMessage)
//        print(StringNameSpace.endMessage)
//        isWorkingRockScissorsPaper = false
        isFlagMukchippa = true
        isTrunFlag = false
        displayMukchippaMenu()
        print("묵찌빠 진입")
    default:
        print(StringNameSpace.drawMessage)
        displayRockScissorsPaperMenu()
    }
}


