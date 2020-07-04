//
//  GameViewController.swift
//  prog36_1
//
//  Created by Stanislav Nosulenko on 29.10.15.
//  Copyright (c) 2015 Stanislav Nosulenko. All rights reserved.
//

import UIKit
import SpriteKit
import iAd
import GameKit

class GameViewController: UIViewController, ADBannerViewDelegate {
    
var bannerView: ADBannerView!
    var scene: GameScene!
    var dontShowAd = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        authenticateLocalPlayer()
        
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "showSocialNetworks", name: "showSocialNetworksID", object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "showIAd", name: "showIAdID", object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "hideIAd", name: "hideIAdID", object: nil)
        
        
        createIAd()
        
        


        
        if let scene = GameScene(fileNamed:"GameScene") {
            // Configure the view.
            
            scene.size = self.view.frame.size
            let skView = self.view as! SKView
            skView.showsFPS = false
            skView.showsNodeCount = false
            skView.showsPhysics = false
            
            /* Sprite Kit applies additional optimizations to improve rendering performance */
            skView.ignoresSiblingOrder = true
            
            /* Set the scale mode to scale to fit the window */
            scene.scaleMode = .AspectFill
            
            skView.presentScene(scene)
            
    
        }
        
        
    }
    
    func createIAd() {
        
        bannerView = ADBannerView(adType: .Banner)
        bannerView.translatesAutoresizingMaskIntoConstraints = false
        bannerView.delegate = self
        bannerView.hidden = true
        view.addSubview(bannerView)
        
        let viewsDictionary = ["bannerView": bannerView]
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[bannerView]|", options: [], metrics: nil, views: viewsDictionary))
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[bannerView]|", options: [], metrics: nil, views: viewsDictionary))

        
    }
    
    func bannerViewDidLoadAd(banner: ADBannerView!) {
     
    }
    
    func bannerView(banner: ADBannerView!, didFailToReceiveAdWithError error: NSError!) {
        dontShowAd = true
        print("NOAD!!!!")
        hideIAd()
    }
    
    
    
    func hideIAd() {
        bannerView.hidden = true
        
    }
    
    func showIAd() {
        if dontShowAd == false {
        bannerView.hidden = false
        }
    }
    
    
    
    func showSocialNetworks(){
        let tempMessage = "Check out my score in CURVE! Can you beat it? #curve_game"
        
        
        let screenSize = UIScreen.mainScreen().bounds
 //       CGPoint(x: CGRectGetMidX(frame), y: yPosition + (rockCollision.size.height * 2))

        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        
        
        UIGraphicsBeginImageContextWithOptions(CGSizeMake(screenWidth,120), false, 0);
        self.view!.drawViewHierarchyInRect(CGRectMake(0, (-(screenHeight / 2) + 170),view!.bounds.size.width,view!.bounds.size.height), afterScreenUpdates: true)
        let screenShot = UIGraphicsGetImageFromCurrentImageContext()
        
        
        
        
        
        let activityVC:UIActivityViewController = UIActivityViewController(activityItems: [tempMessage, screenShot], applicationActivities: nil)
        
        activityVC.excludedActivityTypes = [UIActivityTypeAirDrop, UIActivityTypeCopyToPasteboard, UIActivityTypePrint, UIActivityTypeAssignToContact]
        
        self.presentViewController(activityVC, animated: true, completion: nil)
    }
    
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            return .AllButUpsideDown
        } else {
            return .All
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    func authenticateLocalPlayer(){
        
        let localPlayer = GKLocalPlayer.localPlayer()
        
        localPlayer.authenticateHandler = {(viewController, error) -> Void in
            
            if (viewController != nil) {
                self.presentViewController(viewController!, animated: true, completion: nil)
            }
                
            else {
                print((GKLocalPlayer.localPlayer().authenticated))
            }
        }
        
    }

    
    
}
