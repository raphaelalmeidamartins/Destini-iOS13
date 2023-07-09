//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: ChoiceButton!
    @IBOutlet weak var choice2Button: ChoiceButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateUI()
    }

    @IBAction func choiceChosen(_ sender: ChoiceButton) {
        self.storyBrain.currentEvent = sender.choice!
        self.updateUI()
    }
    
    func updateUI() {
        let currentStory = storyBrain.currentEvent
        let leftEvent = storyBrain.leftEvent
        let rightEvent = storyBrain.rightEvent
        
        storyLabel.text = currentStory.event
        choice1Button.setTitle(currentStory.choice1, for: .normal)
        choice1Button.choice = leftEvent
        choice2Button.setTitle(currentStory.choice2, for: .normal)
        choice2Button.choice = leftEvent
    }
}
