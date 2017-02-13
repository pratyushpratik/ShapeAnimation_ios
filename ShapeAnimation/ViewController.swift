//
//  ViewController.swift
//  ShapeAnimation
//
//  Created by Sierra 4 on 10/02/17.
//  Copyright © 2017 codebrew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewSquare: UIView!
    
    var location = CGPoint(x: 0, y: 0)
    
    var doubleTap : Bool = false
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch: UITouch! = touches.first! as UITouch
        location = touch.location(in: self.view)
        viewSquare.center = location
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch: UITouch! = touches.first! as UITouch
        location = touch.location(in: self.view)
        viewSquare.center = location
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //UIView.animate(withDuration: 5, animations: m)
        viewSquare.center = CGPoint(x: 160,y: 330)
        
    }

    @IBAction func btnClick(_ sender: Any) {
        
        
        
        if (doubleTap) {
            viewSquare.layer.cornerRadius = 0
            doubleTap = false
        } else {
            viewSquare.layer.cornerRadius = viewSquare.frame.height/2
            doubleTap = true
        }
        /*
        var doubleTap : Bool! = false
        if doubleTap == true {
            viewSquare.layer.cornerRadius = viewSquare.frame.height
            //doubleTap = false
        } else {
            viewSquare.layer.cornerRadius = viewSquare.frame.height/2
            //doubleTap = true
        }*/
    }
}

