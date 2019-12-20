//
//  ViewController.swift
//  Challenge
//
//  Created by Home Computer on 20/12/2019.
//  Copyright © 2019 Home Computer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // UI Elements linked to the storyboard
    @IBOutlet weak var bottomButton: UIButton! // has tag 2
    @IBOutlet weak var topButton: UIButton!  // has tag 1
    @IBOutlet weak var restart: UIButton!
    @IBOutlet weak var textLabel: UILabel!
    
    //our strings
    
    let story1 = "On NewYearEve Dec 31st, 2018, A boy in his home at 10:30PM wondering how this day goes by. He gets a call from one of his college friend and invites the boy for a sleepover: \"You're coming right boy?\"."
    
    let answer1a = "I\'ll say no and sleep right back in my bed!!!"
    let answer1b = "Oh Yeah! I'm coming, hope we have a great night!!!!"
    
    let story2 = "Reached his friends home and greeted all others those who have gathered for the night, There comes a voice in the background of the boy says: \"I thought you wouldn't be showing up tonight!\"."
   
    let answer2a = "Change of plans buddy!"
    let answer2b = "Just a suprise to show that I'm capable of partying on a new year eve"
    
    let story3 = "Oh yeah! That wasn't funny, let us see what you got up your sleeve. What do you think would be a better plan for tonight, We've got all night to do anything thats within our reach!"
    
    let answer3a = "Lets stay right where we are, This is a big house, we can sit around and chill here!"
    let answer3b = "Okay, I got you buddy, Lets go on a drive, you guys chill and let me do the driving"
    
    let story4 = "All right big boy here we goo. Make sure you have wear seatbelt, Tonight, I wouldn't let you forget it!!"
    let story5 = "Lets have good dinner over here and play cards all night, I have great games on playing cards!!!"
    let story6 = "All right guys. Thanks for having me overnight. I hope I didn't disappoint you all. Happy new year! Cheers!!"
    
    
    // TODO Step 5: Initialise instance variables here
    
    var storyIndex = 1
    
        
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       // TODO Step 3: Set the text for the storyTextView, topButton, bottomButton, and to T1_Story, T1_Ans1, and T1_Ans2
          restart.isHidden = true
        
        restartButton()
    }

   
 // User presses one of the buttons
    @IBAction func buttonClicked(_ sender: UIButton) {
        
         // TODO Step 4: Write an IF-Statement to update the views
        if sender.tag == 1 && (storyIndex == 1 || storyIndex == 3)  {
            textLabel.text = story3
            topButton.setTitle(answer3a, for: .normal)
            bottomButton.setTitle(answer3b, for: .normal)
            storyIndex = 2
            
        } else if sender.tag == 2 && storyIndex == 1 {
            textLabel.text = story2
            topButton.setTitle(answer2a, for: .normal)
            bottomButton.setTitle(answer2b, for: .normal)
            storyIndex = 3
            
        } else if sender.tag == 1 && storyIndex == 2 {
            textLabel.text = story6
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 6
            
        } else if sender.tag == 2 && storyIndex == 2 {
            textLabel.text = story5
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 5
            
        } else if sender.tag == 1 && storyIndex == 3 {
            textLabel.text = story3
            topButton.setTitle(answer3a, for: .normal)
            bottomButton.setTitle(answer3b, for: .normal)
            storyIndex = 2
        } else if sender.tag == 2 && storyIndex == 3 {
            textLabel.text = story4
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 4
        }
        
        if storyIndex == 4 || storyIndex == 5 || storyIndex == 6 {
            restart.isHidden = false
        }
        
        
    }
    
    @IBAction func restartbuttonPressed(_ sender: UIButton) {
    restartButton()
        }
    
    func restartButton() {
        storyIndex = 1
        textLabel.text = story1
        topButton.setTitle(answer1a, for: .normal)
        bottomButton.setTitle(answer1b, for: .normal)
        topButton.isHidden = false
        bottomButton.isHidden = false
    }
}

