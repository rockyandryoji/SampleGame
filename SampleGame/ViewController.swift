//
//  ViewController.swift
//  SampleGame
//
//  Created by Ryoji on 2015/07/11.
//  Copyright (c) 2015年 rockyryoji. All rights reserved.
//

import UIKit
import GoogleMobileAds
import SpriteKit

class  ViewController: UIViewController,GADInterstitialDelegate{
    
    var interstitial: GADInterstitial!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.interstitial = self.createAndLoadAd()
    }
    
    override func viewDidAppear(animated: Bool) {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.performSegueWithIdentifier("Go", sender: nil)
    }
    
    
    //for Admob
    func createAndLoadAd() -> GADInterstitial{
        var ad = GADInterstitial(adUnitID: "")
        var request = GADRequest()
        ad.delegate = self
        
        ad.loadRequest(request)
        return ad
    }
    
    func showAd(){
        if (self.interstitial.isReady)
        {
            self.interstitial.presentFromRootViewController(self)  //ここがエラーを起こす
            self.interstitial = self.createAndLoadAd()
        }
    }
}

