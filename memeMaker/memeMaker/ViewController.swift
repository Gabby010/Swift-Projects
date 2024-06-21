//
//  ViewController.swift
//  memeMaker
//
//  Created by Gabriela Ruiz Alvarez on 2/17/24.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IB Outlets
    
    
    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var bottomCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
    
    //MARK: - Instance Properties

    
    let topChoices = [
    captionOption(emoji: "🕶️", caption: "You know what's cool?"),
    
    captionOption(emoji: "💕", caption: "You know what I love?"),
    
    captionOption(emoji: "😂", caption: "You know what's funny?")
    
    ]
    
    let bottomChoice = [
        captionOption(emoji: "😸", caption: "Cats wearing hats"),
        captionOption(emoji: "🐶", caption: "Dogs carrying logs"),
        
        captionOption(emoji: "🐒", caption: "Monkeys being funky")
    
    ]
    
    
    
    
    
    //MARK: - VDL
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //assign emoji to my top segmented control.
        topCaptionSegmentedControl.removeAllSegments()
        
        for choice in topChoices {
            topCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        topCaptionSegmentedControl.selectedSegmentIndex = 0
        
        //assign emojis to my bottom segmented control.
        bottomCaptionSegmentedControl.removeAllSegments()
        
        for choice in bottomChoice {
            bottomCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoice.count, animated: false)
        }
        bottomCaptionSegmentedControl.selectedSegmentIndex = 0
        
        
    updateCaption()
        
    }

    
    
    //MARK: - IB Actions
    
    
    @IBAction func segmentedControlChanged(_ sender: UISegmentedControl) {
        updateCaption()
    }
    
    @IBAction func dragTopLabel(_ sender: UIPanGestureRecognizer) {
        
        if sender.state == .changed {
            topCaptionLabel.center = sender.location(in: view)
        }
    }
    
    @IBAction func dragBottomLabel(_ sender: UIPanGestureRecognizer) {
        
        if sender.state == .changed {
            bottomCaptionLabel.center = sender.location(in: view)
        }
        
    }
    
    
    
    
    
    //MARK: - Instance Methods
    func updateCaption() {
        let topIndex = topCaptionSegmentedControl.selectedSegmentIndex
        topCaptionLabel.text = topChoices[topIndex].caption
        
        let bottomIndex = bottomCaptionSegmentedControl.selectedSegmentIndex
        bottomCaptionLabel.text = bottomChoice[bottomIndex].caption
    }
}

