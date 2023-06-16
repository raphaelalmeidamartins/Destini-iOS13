//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

class StoryTree {
    public let event: Event
    
    public var left: StoryTree?
    
    public var right: StoryTree?
    
    init(event: Event, left: StoryTree? = nil, right: StoryTree? = nil) {
        self.event = event
        self.left = left
        self.right = right
    }
}
