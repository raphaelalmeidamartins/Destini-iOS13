//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

class StoryNode {
    public let event: StoryEvent
    
    public var left: StoryNode?
    
    public var right: StoryNode?
    
    init(event: StoryEvent, left: StoryNode? = nil, right: StoryNode? = nil) {
        self.event = event
        self.left = left
        self.right = right
    }
}
