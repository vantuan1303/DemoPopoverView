//
//  LikePopoverView.swift
//  DemoPopoverView
//
//  Created by Nguyen Van Tuan on 12/25/16.
//  Copyright © 2016 MyProjects. All rights reserved.
//

import Foundation
import UIKit

class LikePopoverViewController: UIViewController {
    
    var button = "Like"
  
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func btn_button(sender: UIButton) {
        if sender.tag == 101 {
            button = "Like"
        }
        if sender.tag == 102 {
            button = "Love"
        }
        if sender.tag == 103 {
            button = "Haha"
        }
        if sender.tag == 104 {
            button = "Wow"
        }
        if sender.tag == 105 {
            button = "Sad"
        }
        if sender.tag == 106 {
            button = "Angry"
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        let desViewController: ViewController = segue.destinationViewController as! ViewController
        
        desViewController.mediate = button
        //let img = "\(button).png"
        
        //if desViewController.btn_like != nil {
        //    desViewController.btn_like.setImage(UIImage(named: img), forState: .Normal)
            
       // desViewController.btn_like.setTitle("Liked", forState: .Normal)
            
        //    desViewController.btn_like.setTitleColor(UIColor.blackColor(), forState: .Normal)
       // }
    }

    
   

    

    
}