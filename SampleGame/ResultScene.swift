//
//  ResultScene.swift
//  flihi.single
//
//  Created by Ryoji on 2015/04/27.
//  Copyright (c) 2015年 rockyryoji. All rights reserved.
//


import SpriteKit

class ResultScene: SKScene {
    
    override func didMoveToView(view: SKView) {
        self.backgroundColor = UIColor.greenColor()
        self.size = view.bounds.size
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        let controller = self.view?.window?.rootViewController as! ViewController!
        controller.showAd()
    }
}
