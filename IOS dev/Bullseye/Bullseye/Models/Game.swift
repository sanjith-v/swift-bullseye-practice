//
//  Game.swift
//  Bullseye
//
//  Created by Sanjith Krishna on 20/05/21.
//

import SwiftUI

struct Game {
    var target=Int.random(in: 1..<100)
    var score=0
    var round=1
    
    func points(slider: Int) -> Int{
        var difference: Int
        difference = slider - target
        let award = 100 - abs(difference)
        return award
    }
}
