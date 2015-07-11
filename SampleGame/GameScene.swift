//
//  ResultScene.swift
//  SampleGame
//
//  Created by Ryoji on 2015/07/11.
//  Copyright (c) 2015年 rockyryoji. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    override func didMoveToView(view: SKView) {
        self.backgroundColor = UIColor.blueColor()
        self.size = view.bounds.size
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        let transition = SKTransition.fadeWithDuration(1)
        let scene = ResultScene(size: self.size)
        scene.scaleMode = SKSceneScaleMode.AspectFill
        self.view!.presentScene(scene, transition: transition)
        
    }
}
