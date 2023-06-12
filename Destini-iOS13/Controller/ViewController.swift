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
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    let storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstStory = storyBrain.stories[0]

        storyLabel.text = firstStory.event
        choice1Button.setTitle(firstStory.choice1, for: .normal)
        choice2Button.setTitle(firstStory.choice2, for: .normal)
    }


}

