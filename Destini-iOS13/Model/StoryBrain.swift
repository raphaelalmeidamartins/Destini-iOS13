//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

class StoryBrain {
    var events = [
        Event(
            event: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
            choice1: "I'll hop in. Thanks for the help!", choice1Destination: 2,
            choice2: "Better ask him if he's a murderer first.", choice2Destination: 1
        ),
        Event(
            event: "He nods slowly, unfazed by the question.",
            choice1: "At least he's honest. I'll climb in.", choice1Destination: 2,
            choice2: "Wait, I know how to change a tire.", choice2Destination: 3
        ),
        Event(
            event: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
            choice1: "I love Elton John! Hand him the cassette tape.", choice1Destination: 5,
            choice2: "It's him or me! You take the knife and stab him.", choice2Destination: 4
        ),
        Event(
            event: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Event(
            event: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Event(
            event: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        )
    ]

    var storyTree: StoryNode
    
    init() {
        self.storyTree = StoryNode(event: events[0])
        self.storyTree.left = self.createStoryTree(from: events, currentIndex: events[0].choice1Destination)
        self.storyTree.right = self.createStoryTree(from: events, currentIndex: events[0].choice2Destination)
    }
    
    func createStoryTree(from events: [Event], currentIndex: Int) -> StoryNode? {
        if currentIndex >= 0 && currentIndex < events.count {
            let currentEvent = events[currentIndex]
            let leftEvent = events[currentEvent.choice1Destination]
            let rightEvent = events[currentEvent.choice2Destination]
            let currentNode = StoryNode(event: currentEvent)
            
            if let leftNode = self.findNodeByEvent(leftEvent) {
                currentNode.left = leftNode
            } else {
                currentNode.left = self.createStoryTree(from: events, currentIndex: currentEvent.choice1Destination)
            }
            
            if let rightNode = self.findNodeByEvent(rightEvent) {
                currentNode.right = rightNode
            } else {
                currentNode.right = self.createStoryTree(from: events, currentIndex: currentEvent.choice2Destination)
            }

            return currentNode
        }
        return nil
    }
    
    func findNodeByEvent(_ event: Event) -> StoryNode? {
        return self.findNodeByEvent(event, storyTree)
    }
    
    func findNodeByEvent(_ event: Event,_ currentNode: StoryNode?) -> StoryNode? {
        if currentNode == nil {
            return nil
        }

        var foundNode: StoryNode? = nil
        
        if currentNode!.event == event {
            foundNode = currentNode
        }
        
        if foundNode == nil {
            foundNode = self.findNodeByEvent(event, currentNode?.left)
        }
        
        if foundNode == nil {
            foundNode = self.findNodeByEvent(event, currentNode?.right)
        }
        
        return foundNode
    }
}
