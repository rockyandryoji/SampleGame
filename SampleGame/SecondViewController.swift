//
//  SecondViewController.swift
//  SampleGame
//
//  Created by Ryoji on 2015/07/11.
//  Copyright (c) 2015年 rockyryoji. All rights reserved.
//
import UIKit
import SpriteKit

class  SecondViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = self.view as! SKView
        let scene = GameScene()
        view.showsFPS = false
        view.showsNodeCount = false
        scene.size = view.frame.size
        
        view.presentScene(scene)
        
    }
    
    override func viewDidAppear(animated: Bool) {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
    }
    
}

