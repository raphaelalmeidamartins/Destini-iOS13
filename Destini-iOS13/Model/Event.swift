//
//  Event.swift
//  Destini-iOS13
//
//  Created by Raphael Martins on 11/06/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct Event {
    let event: String

    let choice1: String
    
    let choice1Destination: Int
    
    let choice2: String
    
    let choice2Destination: Int
    
    static func ==(lhs: Event, rhs: Event) -> Bool {
        return lhs.event == rhs.event &&
            lhs.choice1 == rhs.choice1 &&
            lhs.choice1Destination == rhs.choice1Destination &&
            lhs.choice2 == rhs.choice2 &&
            lhs.choice2Destination == rhs.choice2Destination
    }
}
