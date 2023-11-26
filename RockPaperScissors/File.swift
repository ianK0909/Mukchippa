//
//  File.swift
//  RockPaperScissors
//
//  Created by MAC2020 on 2023/11/24.
//

import Foundation


func compareMukchippa(userChoice: RockScissorsPaperCase, computerChoice: RockScissorsPaperCase) {
    switch (userChoice, computerChoice) {
    case (.scissors, .scissors), (.rock, .rock), (.paper, .paper):
        print("비김")
        isWorkingRockScissorsPaper = false
        isFlagMukchippa = true
        winMessagePrint()
    case (.scissors, .paper), (.rock, .scissors), (.paper, .rock):
        print("사용자가 이김")
        isTrunFlag = true
        displayMukchippaMenu()
    case (.paper, .scissors), (.scissors, .rock), (.rock, .paper):
        print("컴퓨터가 이김")
        isTrunFlag = false
        displayMukchippaMenu()
    }
}


func winMessagePrint() {
    if isTrunFlag == true {
        print("사용자의 승리!")
    }else {
        print("컴퓨터의 승리!")
    }
}

func displayMukchippaMenu() {
    if isTrunFlag == true {
        print("[사용자의 턴] 묵(1), 찌(2) 빠(3)! <종료: 0>")
    }else {
        print("[컴퓨터의 턴] 묵(1), 찌(2) 빠(3)! <종료: 0>")
    }
}
