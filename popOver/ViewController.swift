//
//  ViewController.swift
//  popOver
//
//  Created by Antony Yang on 5/25/15.
//  Copyright (c) 2015 Antony Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate, UIGestureRecognizerDelegate {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button1.layer.shadowColor = UIColor.grayColor().CGColor
        button1.layer.shadowOffset = CGSizeMake(0, 3)
        button1.layer.shadowRadius = 3
        button1.layer.shadowOpacity = 1.0
        button1.layer.cornerRadius = 12
//        button1.transform = CGAffineTransformMakeScale(0.9, 0.9)

        button2.layer.shadowColor = UIColor.grayColor().CGColor
        button2.layer.shadowOffset = CGSizeMake(0, 3)
        button2.layer.shadowRadius = 5
        button2.layer.shadowOpacity = 1.0
        button2.layer.cornerRadius = 12

        
        button3.layer.shadowColor = UIColor.grayColor().CGColor
        button3.layer.shadowOffset = CGSizeMake(0, 3)
        button3.layer.shadowRadius = 5
        button3.layer.shadowOpacity = 1.0
        button3.layer.cornerRadius = 12

        
        button4.layer.shadowColor = UIColor.grayColor().CGColor
        button4.layer.shadowOffset = CGSizeMake(0, 3)
        button4.layer.shadowRadius = 5
        button4.layer.shadowOpacity = 1.0
        button4.layer.cornerRadius = 12

        
        button5.layer.shadowColor = UIColor.grayColor().CGColor
        button5.layer.shadowOffset = CGSizeMake(0, 3)
        button5.layer.shadowRadius = 5
        button5.layer.shadowOpacity = 1.0
        button5.layer.cornerRadius = 12

        
        button6.layer.shadowColor = UIColor.grayColor().CGColor
        button6.layer.shadowOffset = CGSizeMake(0, 3)
        button6.layer.shadowRadius = 5
        button6.layer.shadowOpacity = 1.0
        button6.layer.cornerRadius = 12

        
//        var gesture: UILongPressGestureRecognizer = UILongPressGestureRecognizer(target: self, action: "longPressed:")
//        
//        gesture.minimumPressDuration = 1.0
//        self.view.addGestureRecognizer(gesture)
//        self.performSegueWithIdentifier("popoverSegue", sender: self)
    }
    
    // this is on hold
    @IBAction func onLongPress(sender: UILongPressGestureRecognizer) {
    println(sender.view)
        if sender.state == UIGestureRecognizerState.Began {
                println("--Begin")
            
            let button = sender.view as? UIButton
            if button!.tag == 4 {
                self.performSegueWithIdentifier("popoverSegue", sender: self)
                button2.hidden = true
            }
        } else if(sender.state == UIGestureRecognizerState.Ended){
            println("--Ended")
            button3.hidden = true
        }
        
    }
    
    
    // this is on tap
    @IBAction func onButtonPressed(sender: AnyObject) {
        println("--clicked")
        if(sender.state == UIGestureRecognizerState.Began){
            
            var minimumPressDuration: CFTimeInterval // Default is 0.5. Time in seconds the fingers must be held down for the gesture to be recognized
            
        }
//        if(sender.state == UIGestureRecognizerState.Began){
//            println(sender.tag)
////            self.performSegueWithIdentifier("popoverSegue", sender: self)
//            println("Began")
//        } else if(sender.state == UIGestureRecognizerState.Ended) {
//            println("Ended")
//        }
        
        // -- animation begin
//        if sender is UILongPressGestureRecognizer && sender.state == UIGestureRecognizerState.Began {
//            println("Began")
//            
//            let button = sender.view as! UIButton
//            
//            if button.tag == 6 {
//                self.performSegueWithIdentifier("popoverSegue", sender: self)
//            }
//            
//        } else if(sender.state == UIGestureRecognizerState.Ended) {
//            println("Ended")
//        }
//        // -- end animation
//        
    }
    
/*

// -- done without a segue --

    @IBAction func imageTapped(sender: UITapGestureRecognizer) {
    tempVar = "someText"
    self.navigationController.pushViewController(self.storyboard.instantiateViewControllerWithIdentifier("popoverSegue") as secondViewController, animated: true)
    }
*/

//    func longPresed(longPress: UIGestureRecognizer) {
//        if (longPress.state == UIGestureRecognizerState.Ended) {
//            println("ended")
//        }else if (longPress.state == UIGestureRecognizerState.Began) {
//            println("began")
//        }
//    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        //triggers the first segue
        if segue.identifier == "popoverSegue" {
            println("triggered Box 1")
            let popoverViewController = segue.destinationViewController as! UIViewController
            popoverViewController.modalPresentationStyle = UIModalPresentationStyle.Popover
            popoverViewController.popoverPresentationController!.delegate = self

        }
        
        //triggers the second segue
        if segue.identifier == "popoverSegueabc" {
            println("triggered Box 2")
            let popoverViewController = segue.destinationViewController as! UIViewController
            popoverViewController.modalPresentationStyle = UIModalPresentationStyle.Popover
            popoverViewController.popoverPresentationController!.delegate = self
            
        }
    }
    
    // -- all for popup, otherwise fullpage modal
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.None
    }
    
}

