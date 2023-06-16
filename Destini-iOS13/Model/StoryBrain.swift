//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

class StoryBrain {
    let storyTree: StoryTree
    
    init() {
        self.storyTree = StoryTree(event: Event(event: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."))
        self.storyTree.left = StoryTree(event: Event(event: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."))
        self.storyTree.right = StoryTree(event: Event(event: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps."))
    }
}
