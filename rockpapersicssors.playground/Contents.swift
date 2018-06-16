//: Playground - noun: a place where people can play

import UIKit

var rules = [String:String]()
rules["rock"] = "sicssors"
rules["sicssors"] = "paper"
rules["paper"] = "rock"

func playRPS(first: String, second: String) -> String {
    if first == second {
        return "tie"
    }
    else {
        let win = rules[first]
        
        if win! == second {
            return "Player 1 won"
        }
        else {
            return "Player 2 won"
        }
    }
}

print(playRPS(first: "rock", second: "paper"))
