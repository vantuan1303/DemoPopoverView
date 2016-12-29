//
//  ViewController.swift
//  DemoPopoverView
//
//  Created by Nguyen Van Tuan on 12/25/16.
//  Copyright © 2016 MyProjects. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    
    @IBOutlet weak var btn_like: UIButton!
    var mediate = "NoLike"


    override func viewDidLoad() {
        super.viewDidLoad()
        
        if mediate == "NoLike" {
            noLike()
        }else{
        btn_like.setImage(UIImage(named: "\(mediate).png"), forState: .Normal)
        btn_like.setTitle(mediate, forState: .Normal)
        btn_like.setTitleColor(UIColor.blueColor(), forState: .Normal)
        }
        print(mediate)
    }
    
    @IBAction func acc_Like(sender: UIButton) {
        
    }
    
    
    func noLike() -> Void {
        btn_like.setImage(UIImage(named: "greyLike.png"), forState: .Normal)
        btn_like.setTitle("Like", forState: .Normal)
        btn_like.setTitleColor(UIColor.grayColor(), forState: .Normal)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showView" {
            let controller = segue.destinationViewController
            controller.popoverPresentationController?.delegate = self
            controller.preferredContentSize = CGSize(width: 220, height: 30)
        }
    }
    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return .None
    }

}

