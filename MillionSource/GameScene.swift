//
//  GameScene.swift
//  prog36_1
//
//  Created by Stanislav Nosulenko on 29.10.15.
//  Copyright (c) 2015 Stanislav Nosulenko. All rights reserved.
//

import SpriteKit
import GameplayKit
import iAd
import GameKit


var screenShot: UIImage!



enum GameState {
    case ShowingLogo
    case Playing
    case Dead
    case Tutorial
    
}






struct Level {
  
    var levelThemeColor = UIColor(red: 51 / 255, green: 153 / 255, blue: 255 / 255, alpha: 1)
    var levelBackColor = UIColor(red: 0, green: 0, blue: 102 / 255, alpha: 1)
    var levelThemeBorderColor = UIColor(red: 0, green: 102 / 255, blue: 204 / 255, alpha: 1)
    
    
}



//уровни


let startLevel = Level(levelThemeColor: UIColor(red: 51 / 255, green: 153 / 255, blue: 255 / 255, alpha: 1), levelBackColor: UIColor(red: 0, green: 0, blue: 102 / 255, alpha: 1), levelThemeBorderColor: UIColor(red: 0, green: 102 / 255, blue: 204 / 255, alpha: 1))



let yellowLevel = Level(
    levelThemeColor: UIColor(red:1.00, green:0.9, blue:0.00, alpha:1.0),
    levelBackColor: UIColor(red:(0.8 * 0.20), green:(0.8 * 0.18), blue:(0.8 * 0.01), alpha:1.0),
    levelThemeBorderColor: UIColor(red:0.75, green:0.68, blue:0.06, alpha:1.0)
)


let magentaLevel = Level(
    levelThemeColor: UIColor(red:0.78, green:0.19, blue:0.78, alpha:1.0),
    levelBackColor: UIColor(red:0.19, green:0.02, blue:0.20, alpha:1.0),
    levelThemeBorderColor: UIColor(red:0.54, green:0.12, blue:0.55, alpha:1.0)
)


let greenLevel = Level(
    levelThemeColor: UIColor(red:0.00, green:0.63, blue:0.00, alpha:1.0),
    levelBackColor: UIColor(red:0.00, green:0.15, blue:0.00, alpha:1.0),
    levelThemeBorderColor: UIColor(red:0.00, green:0.45, blue:0.00, alpha:1.0)
)


let redLevel = Level(
    levelThemeColor: UIColor(red:0.76, green:0.10, blue:0.07, alpha:1.0),
    levelBackColor: UIColor(red:0.15, green:0.00, blue:0.01, alpha:1.0),
    levelThemeBorderColor: UIColor(red:0.43, green:0.04, blue:0.02, alpha:1.0)
)


let cyanLevel = Level(
    levelThemeColor: UIColor(red:0.00, green:0.78, blue:0.79, alpha:1.0),
    levelBackColor: UIColor(red:0.00, green:0.17, blue:0.18, alpha:1.0),
    levelThemeBorderColor: UIColor(red:0.00, green:0.56, blue:0.57, alpha:1.0)
)


let orangeLevel = Level(
    levelThemeColor: UIColor(red:0.86, green:0.49, blue:0.00, alpha:1.0),
    levelBackColor: UIColor(red:0.17, green:0.08, blue:0.00, alpha:1.0),
    levelThemeBorderColor: UIColor(red:0.55, green:0.30, blue:0.01, alpha:1.0)
)

//
//let purpleLevel = Level(
  //  levelThemeColor: UIColor(red:0.58, green:0.13, blue:0.57, alpha:1.0),
  //  levelBackColor: UIColor(red:0.29, green:0.04, blue:0.29, alpha:1.0),
  //  levelThemeBorderColor: UIColor(red:0.44, green:0.09, blue:0.44, alpha:1.0)
//)
//

let greyLevel = Level(
    levelThemeColor: UIColor(red:0.77, green:0.77, blue:0.78, alpha:1.0),
    levelBackColor: UIColor(red:0.15, green:0.16, blue:0.16, alpha:1.0),
    levelThemeBorderColor: UIColor(red:0.49, green:0.50, blue:0.51, alpha:1.0)
)


let brownLevel = Level(
    levelThemeColor: UIColor(red:0.77, green:0.55, blue:0.31, alpha:1.0),
    levelBackColor: UIColor(red:0.23, green:0.15, blue:0.07, alpha:1.0),
    levelThemeBorderColor: UIColor(red:0.55, green:0.39, blue:0.22, alpha:1.0)
)


let blueLevel = Level(
    levelThemeColor: UIColor(red:0.36, green:0.54, blue:0.66, alpha:1.0),
    levelBackColor: UIColor(red:0.10, green:0.17, blue:0.22, alpha:1.0),
    levelThemeBorderColor: UIColor(red:0.24, green:0.36, blue:0.45, alpha:1.0)
)


let redLevel2 = Level(
    levelThemeColor: UIColor(red:1.00, green:0.60, blue:0.50, alpha:1.0),
    levelBackColor: UIColor(red:0.22, green:0.11, blue:0.09, alpha:1.0),
    levelThemeBorderColor: UIColor(red:0.67, green:0.39, blue:0.33, alpha:1.0)
)

let greenLevel2 = Level(
    levelThemeColor: UIColor(red:0.71, green:0.70, blue:0.36, alpha:1.0),
    levelBackColor: UIColor(red:0.22, green:0.22, blue:0.11, alpha:1.0),
    levelThemeBorderColor: UIColor(red:0.53, green:0.52, blue:0.27, alpha:1.0)
)


let greenLevel3 = Level(
    levelThemeColor: UIColor(red:0.39, green:0.72, blue:0.42, alpha:1.0),
    levelBackColor: UIColor(red:0.08, green:0.18, blue:0.10, alpha:1.0),
    levelThemeBorderColor: UIColor(red:0.29, green:0.55, blue:0.32, alpha:1.0)
)


let pinkLevel = Level(
    levelThemeColor: UIColor(red:0.73, green:0.20, blue:0.52, alpha:1.0),
    levelBackColor: UIColor(red:0.17, green:0.03, blue:0.11, alpha:1.0),
    levelThemeBorderColor: UIColor(red:0.44, green:0.11, blue:0.32, alpha:1.0)
)


let pinkLevel2 = Level(
    levelThemeColor: UIColor(red:0.98, green:0.68, blue:0.82, alpha:1.0),
    levelBackColor: UIColor(red:0.24, green:0.16, blue:0.20, alpha:1.0),
    levelThemeBorderColor: UIColor(red:0.54, green:0.37, blue:0.45, alpha:1.0)
)


let peachLevel = Level(
    levelThemeColor: UIColor(red:1.00, green:0.80, blue:0.64, alpha:1.0),
    levelBackColor: UIColor(red:0.24, green:0.18, blue:0.14, alpha:1.0),
    levelThemeBorderColor: UIColor(red:0.66, green:0.53, blue:0.43, alpha:1.0)
)






// TUTORIAL

//var tutorialPassed = false



struct tutorialSteps {
    
    var waitBefore = 10.50
    var rockTutorialPerc: CGFloat = 0.3
    var positionPlus: CGFloat = 0
    
    
    
}


let step1 = tutorialSteps(waitBefore: 4.5, rockTutorialPerc: 0.6, positionPlus: 0)
let step2 = tutorialSteps(waitBefore: 3, rockTutorialPerc: 0.5, positionPlus: 0.4)
let step3 = tutorialSteps(waitBefore: 2, rockTutorialPerc: 0.45, positionPlus: 0.1)
let step4 = tutorialSteps(waitBefore: 2, rockTutorialPerc: 0.4, positionPlus: 0.5)
let step5 = tutorialSteps(waitBefore: 1.5, rockTutorialPerc: 0.35, positionPlus: 0.275)
//let step6 = tutorialSteps(waitBefore: 3, rockTutorialPerc: 0.5, positionPlus: 0.4)
//let step7 = tutorialSteps(waitBefore: 3, rockTutorialPerc: 0.5, positionPlus: 0.4)
//let step8 = tutorialSteps(waitBefore: 2.5, rockTutorialPerc: 0.45, positionPlus: 0.3)
//let step9 = tutorialSteps(waitBefore: 2.5, rockTutorialPerc: 0.45, positionPlus: 0.45)
//let step10 = tutorialSteps(waitBefore: 2.5, rockTutorialPerc: 0.4, positionPlus: 0.2)
//let step11 = tutorialSteps(waitBefore: 2.5, rockTutorialPerc: 0.4, positionPlus: 0.3)


//var levelsArray = [greenLevel]

let stepDone = tutorialSteps(waitBefore: 1.5, rockTutorialPerc: 0.3, positionPlus: 0.3)

let rockPerc: CGFloat = 0.3

let gapWidth: CGFloat = 0.3

let deadBackColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.7)


//let levelsArray = [cyanLevel]

let levelsArray = [yellowLevel, cyanLevel, greenLevel3, pinkLevel, peachLevel, startLevel, magentaLevel, redLevel2, blueLevel, orangeLevel, greenLevel2, greyLevel, brownLevel, redLevel, greenLevel2, pinkLevel2]

let stepsArray = [step1, step2, step3, step4, step5, stepDone]

var stepNumber: Int = 0

var currentStep: tutorialSteps = step1


var waitTillOver: Int = -1
var overNumber: Int = 0


var levelNumber: Int = 0

var currentLevel = levelsArray[levelNumber]


var themeColor = currentLevel.levelThemeColor
var backColor = currentLevel.levelBackColor
var themeBorderColor = currentLevel.levelThemeBorderColor

var gameOverColor = levelsArray[0].levelThemeColor

let userDefaults = NSUserDefaults.standardUserDefaults()
var rockHeight: CGFloat = 32 // не трогать
var bannerView: ADBannerView!


let heightOfRocks: CGFloat = 0.075


// тема


let rockSpawnWait = 1.5

let themeBorderWidth: CGFloat = 8

let wallWidth: CGFloat = 0.05 // % frame.width


let cornerRad: CGFloat = 3



// игрок
let playerColor = UIColor(red:1.00, green:0.98, blue:0.00, alpha:1.0)
let playerPerc: CGFloat = (rockPerc * 0.178)  // 20 на шестерке
let playerGlowColor = UIColor(red: 0 / 255, green: 0 / 255, blue: 0 / 255, alpha: 1)
let playerGlowWidthPerc: CGFloat = (playerPerc / 10)



// путь
let pathColor = UIColor(red:1.00, green:0.98, blue:0.00, alpha:1.0)
let pathRadiusPerc: CGFloat = (playerPerc / 4)
let pathGlowColor = UIColor.clearColor()
let pathGlowWidth: CGFloat = 0

let pathSpawnWait = 0.2



// меньше - быстрее
let timeOfRockMovement: Double = 5.0





var tutLogo: SKSpriteNode!
var logo: SKLabelNode!

//var fuckYeah: SKSpriteNode!


var firstStart = true



var gameState = GameState.ShowingLogo
var previousHighscore = 00000
var defaults=NSUserDefaults()
var highscore=defaults.integerForKey("highscore")

var tutorialPassed=defaults.boolForKey("tutorialPassed")




var deadBackGround = SKShapeNode()




class GameScene: SKScene, GKGameCenterControllerDelegate, SKPhysicsContactDelegate {
    var player: SKShapeNode!
    var ytot = 1
    var scoreLabel: SKLabelNode!
    var hScoreLabel: SKLabelNode!
    var gameOver: SKLabelNode!
    var tapToRestart: SKLabelNode!
    
    var scoreBack: SKShapeNode!
    
    var gameOverScore: SKLabelNode!
    
    var gravityDirection: CGFloat = 3.0
    
    var viewController: GameViewController!
    
    
    
//    var backgroundMusic: SKAudioNode!
    
    var score = 0 {
        didSet {
            scoreLabel.text = "SCORE: \(score)"
        }
    }
    
    var spawnCount = 0
    
    
    
    
    
    
    override func didMoveToView(view: SKView) {
        createPlayer()
        createSky()
        createLeftGround()
        createRightGround()
        createScore()
        createLogos()
        physicsWorld.gravity = CGVectorMake((gravityDirection), 0.0)
        physicsWorld.contactDelegate = self
        let silentSound = SKAction.playSoundFileNamed("Silent.wav", waitForCompletion: false)
        
        
        
        
        
        if tutorialPassed == false {
            
                scoreLabel.alpha = 0
                hScoreLabel.alpha = 0
                scoreBack.alpha = 0
                
                

            
        }
       
//        if let highscore = userDefaults.valueForKey("highscore") {
//
//        }
//        else {
//            highscore = 0
//     }
        
        
        if firstStart == true {
            runAction(silentSound)
         
            firstStart = false
        }
//        backgroundMusic = SKAudioNode(fileNamed: "music.m4a")
//        addChild(backgroundMusic)
        
        
            
        
       
        
        
    }
    
    
    func showLeader() {
        let vc = self.view?.window?.rootViewController
        let gc = GKGameCenterViewController()
        gc.gameCenterDelegate = self
        vc?.presentViewController(gc, animated: true, completion: nil)
    }

    
    func gameCenterViewControllerDidFinish(gameCenterViewController: GKGameCenterViewController)
    {
        gameCenterViewController.dismissViewControllerAnimated(true, completion: nil)
        
    }

    
    
    func showButton() {
        let button = SKShapeNode(circleOfRadius: 30)
        button.fillColor = gameOverColor
        button.strokeColor = UIColor.blackColor()
        button.position = CGPointMake(CGRectGetMidX(self.frame), (CGRectGetMidY(self.frame) - 70))
        button.zPosition = 20000
        button.name = "Button"
        
        let circularArrow = SKSpriteNode(imageNamed: "ARROW.png")
        circularArrow.xScale = 40 / circularArrow.size.width
        circularArrow.yScale = 40 / circularArrow.size.height
        circularArrow.position = CGPointMake(CGRectGetMidX(self.frame), (CGRectGetMidY(self.frame) - 70))
        circularArrow.zPosition = 20001
        
        self.addChild(button)
        self.addChild(circularArrow)
        
        
        
        var moveTrophyBy:CGFloat = 0
        
        
        if tutorialPassed == true {
            
            moveTrophyBy = 75
            
        }
        
        
        
        
        let trophyButton = SKShapeNode(circleOfRadius: 30)
        trophyButton.fillColor = gameOverColor
        trophyButton.strokeColor = UIColor.blackColor()
        trophyButton.position = CGPointMake((CGRectGetMidX(self.frame) - moveTrophyBy), (CGRectGetMidY(self.frame) - 150))
        trophyButton.zPosition = 20000
        trophyButton.name = "trophyButton"
        
        let trophy = SKSpriteNode(imageNamed: "podium.png")
        trophy.xScale = 45 / trophy.size.width
        trophy.yScale = 45 / trophy.size.height
        trophy.position = CGPointMake((CGRectGetMidX(self.frame) - moveTrophyBy), (CGRectGetMidY(self.frame) - 150))
        trophy.zPosition = 20001
        
        
        
        
        self.addChild(trophyButton)
        self.addChild(trophy)
        
        
        
        
        let shareButton = SKShapeNode(circleOfRadius: 30)
        shareButton.fillColor = gameOverColor
        shareButton.strokeColor = UIColor.blackColor()
        shareButton.position = CGPointMake((CGRectGetMidX(self.frame) + 0), (CGRectGetMidY(self.frame) - 150))
        shareButton.zPosition = 20000
        shareButton.name = "shareButton"
        
        
        let shareArrow = SKSpriteNode(imageNamed: "share.png")
        shareArrow.xScale = 35 / shareArrow.size.width
        shareArrow.yScale = 30 / shareArrow.size.height
        shareArrow.position = CGPointMake((CGRectGetMidX(self.frame) + 0), (CGRectGetMidY(self.frame) - 150))
        shareArrow.zPosition = 20001
        
        
        
        let competitionButton = SKShapeNode(circleOfRadius: 30)
        competitionButton.fillColor = gameOverColor
        competitionButton.strokeColor = UIColor.blackColor()
        competitionButton.position = CGPointMake((CGRectGetMidX(self.frame) + 75), (CGRectGetMidY(self.frame) - 150))
        competitionButton.zPosition = 20000
        competitionButton.name = "competitionButton"
        
        let competition = SKSpriteNode(imageNamed: "trophy.png")
        competition.xScale = 35 / competition.size.width
        competition.yScale = 35 / competition.size.height
        competition.position = CGPointMake((CGRectGetMidX(self.frame) + 75), (CGRectGetMidY(self.frame) - 150))
        competition.zPosition = 20001


        
        
        if tutorialPassed == true {
            self.addChild(shareButton)
        
            self.addChild(shareArrow)
            
            self.addChild(competitionButton)
            
            self.addChild(competition)
            
        }
        
        
        
        
        
    }
    
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
    
        
        
        let touch = touches.first! as UITouch?
        
        switch gameState {
        case .ShowingLogo:
            
            
            if tutorialPassed == true {
                gameState = .Playing
                let activatePlayer = SKAction.runBlock { [unowned self] in
                    self.player.physicsBody?.dynamic = true
                    self.initRocks()
                    self.initPath()
                }
                let fadeOut = SKAction.fadeOutWithDuration(0.5)
                let remove = SKAction.removeFromParent()
                let wait = SKAction.waitForDuration(0.0)
                
                
                let sequence = SKAction.sequence([fadeOut, wait, activatePlayer, remove])
                logo.runAction(sequence)
                
               
                
                    
                

                
                
            } else {
                
                gameState = .Tutorial
                let activatePlayer = SKAction.runBlock { [unowned self] in
                    
//                    self.scoreLabel.alpha = 0
                    
                    
                    self.player.physicsBody?.dynamic = true
                    self.initTutorialRocks()
                    self.initPath()
                }
                let fadeOut = SKAction.fadeOutWithDuration(0.5)
                let remove = SKAction.removeFromParent()
                let wait = SKAction.waitForDuration(0.0)
                
                
                let sequence = SKAction.sequence([fadeOut, wait, activatePlayer, remove])
                tutLogo.runAction(sequence)

            }
                
                
            
        case .Playing:
            gravityDirection = -gravityDirection
    
            physicsWorld.gravity = CGVectorMake((gravityDirection), 0.0)
        case .Dead:
            
                
            if let location = touch?.locationInNode(self)
            {
                for node in self.nodesAtPoint(location)
                {
                    if node.name == "Button"
                    {
                        levelNumber = 0
                        stepNumber = 0
                        waitTillOver = -1
                        overNumber = 0
                        
                        NSNotificationCenter.defaultCenter().postNotificationName("hideIAdID",  object: nil)
                        
                        currentLevel = levelsArray[levelNumber]
            
                        themeColor = currentLevel.levelThemeColor
                        backColor = currentLevel.levelBackColor
                        themeBorderColor = currentLevel.levelThemeBorderColor

            
                        let scene = GameScene(fileNamed: "GameScene")!
            
                        scene.size = self.view!.frame.size
            
                        scene.scaleMode = .AspectFill
                        let transition = SKTransition.moveInWithDirection(SKTransitionDirection.Right, duration: 1)
                        self.view?.presentScene(scene, transition: transition)
            
                        gameOverColor = levelsArray[0].levelThemeColor
                        

                        gameState = .ShowingLogo
                    }
                    
                    if node.name == "shareButton"
                    {
                        
                        NSNotificationCenter.defaultCenter().postNotificationName("showSocialNetworksID",  object: nil)                    
                        
                    
                    }

                    
                    if node.name == "trophyButton" {
                        
                        showLeader()
                        
                    }
                    
                    
                    if node.name == "competitionButton" {
                        
                        if let url = NSURL(string: "http://curve-game.com/competition") {
                            UIApplication.sharedApplication().openURL(url)
                        }
                        
                        print("PUSH WORKED")
                    }

                    
                }
                
            }
            
            
        case .Tutorial:
            
            gravityDirection = -gravityDirection
            
            physicsWorld.gravity = CGVectorMake((gravityDirection), 0.0)

            
        }
    
    }
    
    override func update(currentTime: CFTimeInterval) {
    }
    
    func createLogos() {
       
        if tutorialPassed == false {
            
            tutLogo = SKSpriteNode(imageNamed: "tutorial")
            tutLogo.position = CGPoint(x: CGRectGetMidX(frame), y: CGRectGetMidY(frame))
            
            if tutLogo.size.height > frame.height {
                
                tutLogo.yScale = frame.height / tutLogo.size.height
                tutLogo.xScale = frame.height / tutLogo.size.height
                
                
                
                
            }
            
            addChild(tutLogo)
            
        }
        
        else {
        
            logo = SKLabelNode(fontNamed: "AvenirNext-Heavy")
            logo.fontSize = 56
            
            logo.position = CGPointMake(CGRectGetMidX(frame), (CGRectGetMidY(frame) + 70))
            logo.horizontalAlignmentMode = .Center
            logo.text = "CURVE"
            logo.fontColor = yellowLevel.levelThemeColor
            logo.name = "logo"
            logo.zPosition = 20000

            addChild(logo)
            
        }

        

        

    }
    
    
    
    func createPlayer() {
        
        let playerRadius: CGFloat = frame.width * playerPerc
        
        let Circle = SKShapeNode(circleOfRadius: (playerRadius))
        Circle.strokeColor = playerGlowColor
        //Circle.glowWidth = playerGlowWidthPerc * frame.width
        Circle.fillColor = playerColor
        Circle.lineWidth = playerGlowWidthPerc * frame.width
        
        
        
        
        
        
        player = Circle
        player.zPosition = 2001
        player.position = CGPoint(x: frame.width / 2, y: frame.height * 0.3)
        
        
        addChild(player)
        
        let body = SKPhysicsBody(circleOfRadius: (playerRadius))
        let mass = body.mass
               print("mass")
               print(mass)
        body.mass = 0.056
        
        player.physicsBody = body
        player.physicsBody!.contactTestBitMask = player.physicsBody!.collisionBitMask
        player.physicsBody?.dynamic = false
        player.physicsBody?.allowsRotation = false
        
        
 //       print("mass")
 //       print(mass)
        
        
        
    }
    
    
    
    
    func didBeginContact(contact: SKPhysicsContact) {
        if contact.bodyA.node?.name == "scoreDetect" || contact.bodyB.node?.name == "scoreDetect" {
           
            
            
            
            
            
            
            ++score
            ++waitTillOver
            
            if waitTillOver == 10 {
                
                    if overNumber < 16 {
                    
                        ++overNumber
                        
                    } else {
                    
                        
                        overNumber = 1
                    
                    }
                
                gameOverColor = levelsArray[overNumber].levelThemeColor
                waitTillOver = 0
                
                
            }
            
            
            

            


            
            
            if contact.bodyA.node == player {
                contact.bodyB.node?.removeFromParent()
            } else {
                contact.bodyA.node?.removeFromParent()
            }
            
            let sound = SKAction.playSoundFileNamed("coin1.wav", waitForCompletion: false)
            runAction(sound)
            
            
            
            
            if gameState == .Playing {
            
                
                
            }
             if gameState == .Tutorial{
            if score == 5 {
                
                
                if contact.bodyA.node == player || contact.bodyB.node == player {
                    if let explosion = SKEmitterNode(fileNamed: "PlayerExplosion.sks") {
                        explosion.position = player.position
                        explosion.zPosition = player.zPosition - 1
                        addChild(explosion)
                        
                        
                        
                        let boomMove = SKAction.moveByX(0, y: -(frame.height + (rockHeight * 2)), duration: timeOfRockMovement)
                        
                        explosion.runAction(boomMove)
                        
                        
                    }
                    
                    let sound = SKAction.playSoundFileNamed("success.wav", waitForCompletion: false)
                    runAction(sound)
                    
                    
                    
                    
                   
                    tutorialPassed = true
                    
                    userDefaults.setValue(tutorialPassed, forKey: "tutorialPassed")
                    userDefaults.synchronize()
                    createGameOver()
                    
                    gameOver.text = "Awesome!"
                    tapToRestart.text = "Tap for the real Game"
                   
              //      fuckYeah.alpha = 1
                        
                    
                    
                    gameState = .Dead
                    
                    
                    
                    gameOverScore.text = "Score: \(score)"
                    
                    showButton()
                    //            backgroundMusic.runAction(SKAction.stop())
                    
                    
                    player.removeFromParent()
                    
                    
                    
                    //speed = 0
                    
                }
                }
                
            }
            

            
            return
        }
        if contact.bodyA.node == nil || contact.bodyB.node == nil {
            return
        }
        if contact.bodyA.node == player || contact.bodyB.node == player {
            
                        //speed = 0
            
            
            if let explosion = SKEmitterNode(fileNamed: "PlayerExplosion.sks") {
                explosion.position = player.position
                explosion.zPosition = player.zPosition - 1
                addChild(explosion)
                let boomMove = SKAction.moveByX(0, y: -(frame.height + (rockHeight * 2)), duration: timeOfRockMovement)
                
                explosion.runAction(boomMove)
            }
            
            let sound = SKAction.playSoundFileNamed("explosion1.wav", waitForCompletion: false)
            runAction(sound)
            
            

            if tutorialPassed == true {
                
                
                
                
            if highscore < score {
            
                
  
            userDefaults.setValue(score, forKey: "highscore")
            userDefaults.synchronize()
            
                
                
                    highscore = score
               
                
            hScoreLabel.text = ("HIGHSCORE \(highscore)")
            
            }
            
                saveHighscore(score)

                
            }
            

            
 //           gameOver = SKSpriteNode(imageNamed: "gameover")
 //           gameOver.position = CGPoint(x: CGRectGetMidX(frame), y: CGRectGetMidY(frame))
 //           gameOver.alpha = 0
 //           gameOver.zPosition = 1000


//                gameOver.fontColor = currentLevel.levelThemeColor

            gameState = .Dead
                    NSNotificationCenter.defaultCenter().postNotificationName("showIAdID",  object: nil)
            
            createGameOver()
            gameOverScore.text = "Score: \(score)"

            
            showButton()
//            backgroundMusic.runAction(SKAction.stop())
            
            hScoreLabel.text = "BEST: \(highscore)"
            
            player.removeFromParent()
            
        }
    }
    
    
    
    func levelUp() {
        
        ++levelNumber
        currentLevel = levelsArray[levelNumber]
        
        themeColor = currentLevel.levelThemeColor
        backColor = currentLevel.levelBackColor
        themeBorderColor = currentLevel.levelThemeBorderColor
        
        
        let lGround = SKShapeNode(rectOfSize: CGSize(width: (frame.width * (wallWidth * 2.00)), height: ((frame.height) * 2)))
        lGround.fillColor = themeColor
        lGround.strokeColor = themeBorderColor
        lGround.lineWidth = (themeBorderWidth)
   
        
        lGround.zPosition = CGFloat(levelNumber * 21)
        
        lGround.position = CGPoint(x: (0) , y: ((themeBorderWidth) + frame.height + (lGround.frame.height / 2) + (rockHeight / 2)))
        
        
        
        addChild(lGround)
        
        let lGroundFront = SKShapeNode(rectOfSize: CGSize(width: ((frame.width * (wallWidth) * 2.00) - ((themeBorderWidth))), height: (frame.height * 2) - (themeBorderWidth)))
        lGroundFront.fillColor = themeColor
        lGroundFront.strokeColor = UIColor.clearColor()
        lGroundFront.lineWidth = (themeBorderWidth)
        
        lGroundFront.zPosition = CGFloat((levelNumber * 21) + 20)
        
        lGroundFront.position = CGPoint(x: (1) , y: (frame.height + (lGroundFront.frame.height / 2) + (themeBorderWidth * 2) + (rockHeight / 2)))
        
        
        
        addChild(lGroundFront)

        
        let endPosition = frame.height + ((rockHeight * 2))
        let lGrEndPosition = (lGround.frame.height * 0.75)
        let lFrGrEndPosition = (lGround.frame.height * 0.75)
        
        
        
        let moveAction = SKAction.moveByX(0, y: -lGrEndPosition, duration: NSTimeInterval(((lGrEndPosition / endPosition) * (CGFloat(timeOfRockMovement)))))
        let moveActionFront = SKAction.moveByX(0, y: -lFrGrEndPosition, duration: NSTimeInterval(((lFrGrEndPosition / endPosition) * (CGFloat(timeOfRockMovement)))))
        lGround.runAction(moveAction)
        lGroundFront.runAction(moveActionFront)

        
 //-------------------------------------------------
        
        let rGround = SKShapeNode(rectOfSize: CGSize(width: (frame.width * (wallWidth * 2.00)), height: ((frame.height) * 2)))
        rGround.fillColor = themeColor
        rGround.strokeColor = themeBorderColor
        rGround.lineWidth = themeBorderWidth
        
        
        rGround.zPosition = CGFloat(levelNumber * 21)
        
        rGround.position = CGPoint(x: (frame.width) , y: ((themeBorderWidth) + frame.height + (rGround.frame.height / 2) + (rockHeight / 2)))
        
        
        
        addChild(rGround)
        
        let rGroundFront = SKShapeNode(rectOfSize: CGSize(width: (((frame.width) * (wallWidth * 2.00)) - ((themeBorderWidth))), height: (frame.height * 2) - (themeBorderWidth)))
        rGroundFront.fillColor = themeColor
        rGroundFront.strokeColor = UIColor.clearColor()
        rGroundFront.lineWidth = themeBorderWidth
        
        rGroundFront.zPosition = CGFloat((levelNumber * 21) + 20)
        
        rGroundFront.position = CGPoint(x: (frame.width) , y: (frame.height + (rGroundFront.frame.height / 2) + (themeBorderWidth * 2) + (rockHeight / 2)))
        
        
        
        addChild(rGroundFront)
        
        

        
        

        rGround.runAction(moveAction)
        rGroundFront.runAction(moveActionFront)
        
        
//=============================================================================================================
        
        
        let topSky = SKSpriteNode(color: backColor, size: CGSize(width: frame.width, height: (frame.height * 2)))
        topSky.anchorPoint = CGPoint(x: 0.5, y: 0)
        
        
        topSky.position = CGPoint(x: CGRectGetMidX(frame), y: (frame.height + ((rockHeight + (themeBorderWidth)) / 2)))
        
        
        addChild(topSky)
        
        topSky.zPosition = CGFloat(-40 + (21 * levelNumber))
        let skyEndPosition = frame.height + (((themeBorderWidth) + rockHeight) * 2)

        let skyMoveAction = SKAction.moveByX(0, y: -skyEndPosition, duration: timeOfRockMovement)
        
        topSky.runAction(skyMoveAction)
        
        
        
        
    }
    
    
    
    
    
    
    func createSky() {
        let topSky = SKSpriteNode(color: backColor, size: CGSize(width: frame.width, height: frame.height))
        topSky.anchorPoint = CGPoint(x: 0.5, y: 1)
        
        
        topSky.position = CGPoint(x: CGRectGetMidX(frame), y: frame.size.height)
     
        
        addChild(topSky)
        
              topSky.zPosition = -40
        
    }
    func createLeftGround() {
        let lGround = SKShapeNode(rectOfSize: CGSize(width: ((frame.width) * (wallWidth * 2.00)), height: (frame.height * 2)))
        lGround.fillColor = themeColor
        lGround.strokeColor = themeBorderColor
        lGround.lineWidth = (themeBorderWidth)
        //        let lGround1 = SKSpriteNode(color: themeColor,
    
            lGround.zPosition = 0

             lGround.position = CGPoint(x: (0) , y: (frame.height * 0.5))
       
            lGround.physicsBody = SKPhysicsBody(rectangleOfSize: CGSize(width: ((themeBorderWidth) + ((frame.width) * (wallWidth * 2.00))), height: ((themeBorderWidth) + (frame.height * 2))))
            lGround.physicsBody?.dynamic = false

        
            addChild(lGround)
            
        let lGroundFront = SKShapeNode(rectOfSize: CGSize(width: (((frame.width) * (wallWidth * 2.00)) - ((themeBorderWidth))), height: (frame.height * 2)))
        lGroundFront.fillColor = themeColor
        lGroundFront.strokeColor = UIColor.clearColor()
        lGroundFront.lineWidth = themeBorderWidth
        
        lGroundFront.zPosition = 20
        
        lGroundFront.position = CGPoint(x: (1) , y: (0))
        
        
        
        addChild(lGroundFront)
    
            
            
        
            
            }
 
    
    func createRightGround() {

        
        let rGround = SKShapeNode(rectOfSize: CGSize(width: ((frame.width) * (wallWidth * 2.00)), height: (frame.height * 2)))
        rGround.fillColor = themeColor
        rGround.strokeColor = themeBorderColor
        rGround.lineWidth = CGFloat(themeBorderWidth)

        
        let rGroundFront = SKShapeNode(rectOfSize: CGSize(width: (((frame.width) * (wallWidth * 2.00)) - ((themeBorderWidth))), height: (frame.height * 2)))
        rGroundFront.fillColor = themeColor
        rGroundFront.strokeColor = UIColor.clearColor()
        rGroundFront.lineWidth = themeBorderWidth
        
        rGroundFront.zPosition = 20


        
        
        let leftRock = SKShapeNode(rectOfSize: CGSize(width: (frame.width), height: (rockHeight)), cornerRadius: (cornerRad))
        leftRock.fillColor = themeColor
        leftRock.strokeColor = themeBorderColor
        leftRock.lineWidth = (themeBorderWidth)
        
        
        
        
        
                rGround.zPosition = 0
                
                
                
                rGround.position = CGPoint(x: (frame.width) , y:(frame.height * 0.5))

        
                rGroundFront.position = CGPoint(x: (frame.width) , y:(frame.height * 0.5))

        
                
                rGround.physicsBody = SKPhysicsBody(rectangleOfSize: CGSize(width: ((themeBorderWidth) + ((frame.width) * (wallWidth * 2.00))), height: ((themeBorderWidth) + (frame.height * 2))))
                rGround.physicsBody?.dynamic = false
                
                
                
                
                
                addChild(rGround)
                addChild(rGroundFront)
                
                
                
                
    
    }
    
    
    
    func createRocks() {
        
        rockHeight = (frame.height * (heightOfRocks))
 
        if gameState != .Dead {
        
        switch spawnCount {
            
        case 10:
            levelUp()
            
        case 20:
            levelUp()
            
        case 30:
            levelUp()
            
        case 40:
            levelUp()
            
        case 50:
            levelUp()
            
        case 60:
            levelUp()
            
        case 70:
            levelUp()
            
        case 80:
            levelUp()
            
        case 90:
            levelUp()
            
        case 100:
            levelUp()
        
        case 110:
            levelUp()
        
        case 120:
            levelUp()
        
        case 130:
            levelUp()
        
        case 140:
            levelUp()
        
        case 150:
            levelUp()
            
        default:
            break
            
        }
        }
        ++spawnCount

        
        
        
        
        
        let leftRock = SKShapeNode(rectOfSize: CGSize(width: (frame.width), height: (rockHeight)), cornerRadius: (cornerRad))
        leftRock.fillColor = themeColor
        leftRock.strokeColor = themeBorderColor
        leftRock.lineWidth = themeBorderWidth
        
        leftRock.physicsBody = SKPhysicsBody(rectangleOfSize: CGSize(width: ((frame.width) + (themeBorderWidth)), height: ((rockHeight) + (themeBorderWidth))))
        
        

        leftRock.physicsBody?.dynamic = false
        
        
        
        let rightRock = SKShapeNode(rectOfSize: CGSize(width: (frame.width), height: (rockHeight)), cornerRadius: (cornerRad))
        rightRock.fillColor = themeColor
        rightRock.strokeColor = themeBorderColor
        rightRock.lineWidth = (themeBorderWidth)
        
        
        rightRock.physicsBody = SKPhysicsBody(rectangleOfSize: CGSize(width: ((frame.width) + (themeBorderWidth)), height: ((rockHeight) + (themeBorderWidth))))
        rightRock.physicsBody?.dynamic = false
        
        
        leftRock.zPosition = CGFloat(10 + (21 * levelNumber))
        rightRock.zPosition = CGFloat(10 + (21 * levelNumber))
        
        
        // 2
        let rockCollision = SKSpriteNode(color: UIColor.clearColor(), size: CGSize(width: (frame.width * 2), height: 32))
        
        rockCollision.physicsBody = SKPhysicsBody(rectangleOfSize: rockCollision.size)
        rockCollision.physicsBody?.dynamic = false
        
        rockCollision.name = "scoreDetect"
        
        addChild(leftRock)
        addChild(rightRock)
        addChild(rockCollision)
        
        
        
        // 3
        
        let rockWidth = frame.width
        
        let yPosition = frame.height + leftRock.frame.height
        
        let rockDistance = frame.width * (gapWidth)
        
        let min = Int(((frame.width) * (wallWidth)) - (rockWidth / 2))
        let max = Int(((frame.width) * (1.00 - ((wallWidth)))) - rockDistance - (rockWidth / 2))
        

        let rand = min + Int(arc4random_uniform(UInt32(max - min)))
        //GKRandomDistribution(lowestValue: min, highestValue: max)

        let xPosition = CGFloat(rand)
        
  
        
        // 4
        leftRock.position = CGPoint(x: xPosition, y: yPosition)
        rightRock.position = CGPoint(x: xPosition + rockWidth + rockDistance, y: yPosition)

        
        rockCollision.position = CGPoint(x: xPosition, y: CGRectGetMidY(frame))
        
        rockCollision.position = CGPoint(x: CGRectGetMidX(frame), y: yPosition + (rockCollision.size.height * 2))
        
        
        
        
        
        let endPosition = frame.height + (leftRock.frame.height * 2)
        
        
        
        let moveAction = SKAction.moveByX(0, y: -endPosition, duration: timeOfRockMovement)
        let moveSequence = SKAction.sequence([moveAction, SKAction.removeFromParent()])
        leftRock.runAction(moveSequence)
        rightRock.runAction(moveSequence)
        rockCollision.runAction(moveSequence)
    }
    func initRocks() {
        
        
        
        let create = SKAction.runBlock { [unowned self] in
            self.createRocks()
        }
        
        let wait = SKAction.waitForDuration(rockSpawnWait)
        let sequence = SKAction.sequence([create, wait])
        let repeatForever = SKAction.repeatActionForever(sequence)
        
        runAction(repeatForever)
    }
    
    
    
    
    func createPath(){
        
        
        let pathRadius = frame.width * pathRadiusPerc
        let pathPoint = SKShapeNode(circleOfRadius: (pathRadius))
        pathPoint.lineWidth = 1
        pathPoint.strokeColor = pathColor
//        pathPoint.strokeColor = pathGlowColor
        pathPoint.glowWidth = 0
        pathPoint.fillColor = pathColor
        
        
        
        
        
        
        
        if gameState != .Dead {
      
        addChild(pathPoint)
            
        }
        
        
        pathPoint.position = player.position
        pathPoint.zPosition = 1000
        
        
        
        let endPosition = frame.height + ((rockHeight * 2))
        let pathEndPosition = frame.height + (pathPoint.frame.width * 2)
        
        
        
        let moveAction = SKAction.moveByX(0, y: -pathEndPosition, duration: NSTimeInterval(((pathEndPosition / endPosition) * (CGFloat(timeOfRockMovement)))))
        let moveSequence = SKAction.sequence([moveAction, SKAction.removeFromParent()])
        pathPoint.runAction(moveSequence)

        
    }
    
    
    func initPath() {
        let create = SKAction.runBlock { [unowned self] in
            self.createPath()
        }
        
        let wait = SKAction.waitForDuration(pathSpawnWait)
        let sequence = SKAction.sequence([create, wait])
        let repeatForever = SKAction.repeatActionForever(sequence)
        
        runAction(repeatForever)
    }

    
    func createScore() {
        scoreLabel = SKLabelNode(fontNamed: "AvenirNext-Heavy")
        scoreLabel.fontSize = 18
        
        scoreLabel.position = CGPointMake(CGRectGetMaxX(frame) - 30, CGRectGetMaxY(frame) - 22)
        scoreLabel.horizontalAlignmentMode = .Right
        scoreLabel.text = "SCORE: 0"
        scoreLabel.fontColor = UIColor(red:1.00, green:0.98, blue:0.00, alpha:1.0)
        
        
        hScoreLabel = SKLabelNode(fontNamed: "AvenirNext-Heavy")
        hScoreLabel.fontSize = 18
        hScoreLabel.horizontalAlignmentMode = .Left
        
        hScoreLabel.position = CGPointMake(30, CGRectGetMaxY(frame) - 22)

        hScoreLabel.text = "BEST: \(highscore)"
        
        
        
        hScoreLabel.fontColor = UIColor(red:1.00, green:0.98, blue:0.00, alpha:1.0)
        
        
        scoreLabel.zPosition = 1000
        hScoreLabel.zPosition = 1000
        
        scoreBack = SKShapeNode(rectOfSize: CGSize(width: frame.width, height: 56))
        scoreBack.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.45)
        scoreBack.strokeColor = UIColor.clearColor()
        scoreBack.position = CGPointMake(CGRectGetMidX(frame), frame.height)
        scoreBack.zPosition = 999
        
        
        
        addChild(scoreBack)
        addChild(scoreLabel)
        addChild(hScoreLabel)
    }
    
    
    func createGameOver() {
        
        
        
        gameOver = SKLabelNode(fontNamed: "AvenirNext-Heavy")
        gameOver.fontSize = 48
        
        gameOver.position = CGPointMake(CGRectGetMidX(frame), (CGRectGetMidY(frame) + 110))
        gameOver.horizontalAlignmentMode = .Center
        gameOver.text = "Game Over"
        gameOver.fontColor = gameOverColor
        gameOver.name = "gameOver"
        gameOver.zPosition = 20000
        
        gameOverScore = SKLabelNode(fontNamed: "AvenirNext-Heavy")
        gameOverScore.fontSize = 20
        
        gameOverScore.position = CGPointMake(CGRectGetMidX(frame), (CGRectGetMidY(frame) + 70))
        gameOverScore.horizontalAlignmentMode = .Center
        gameOverScore.text = "Score: 0"
        gameOverScore.fontColor = gameOverColor
        gameOverScore.name = "gameOverScore"
        gameOverScore.zPosition = 20000

        
        tapToRestart = SKLabelNode(fontNamed: "AvenirNext-Heavy")
        tapToRestart.fontSize = 28
        
        tapToRestart.position = CGPointMake(CGRectGetMidX(frame), (CGRectGetMidY(frame) - 10))
        tapToRestart.horizontalAlignmentMode = .Center
        tapToRestart.text = "Tap to start" +
                                    " again"
        tapToRestart.fontColor = gameOverColor
        tapToRestart.name = "tapToRestart"
        tapToRestart.zPosition = 20000

        

        addChild(gameOver)
        addChild(gameOverScore)
        addChild(tapToRestart)
        
        
        deadBackGround = SKShapeNode(rectOfSize: CGSize(width: (frame.width + 20), height: (frame.height + 20)))
        deadBackGround.fillColor = deadBackColor
        deadBackGround.position = CGPointMake(CGRectGetMidX(frame), CGRectGetMidY(frame))
        deadBackGround.zPosition = 19999
        addChild(deadBackGround)
        
        
    }
    
    
    //=====================================================================================
    //=====================================================================================
    //=====================================================================================
    
    
    func startTutorial() {
        
        createPlayer()
        createLeftGround()
        createRightGround()
        createSky()
        
        
      
            
        
            
        

        
        
        
    }
    
    
    
    
    func initTutorialRocks() {
        
        
        SKAction.waitForDuration(3)
        
        currentStep = stepsArray[stepNumber]
        
        
        let create = SKAction.runBlock { [unowned self] in
            self.createTutorialRocks(currentStep.rockTutorialPerc, positionPlus: currentStep.positionPlus, waitTime: currentStep.waitBefore)
        }
        
        
                let wait1 = SKAction.waitForDuration(stepsArray[0].waitBefore)
                let wait2 = SKAction.waitForDuration(stepsArray[1].waitBefore)
                let wait3 = SKAction.waitForDuration(stepsArray[2].waitBefore)
                let wait4 = SKAction.waitForDuration(stepsArray[3].waitBefore)
                let wait5 = SKAction.waitForDuration(stepsArray[4].waitBefore)
//                let wait6 = SKAction.waitForDuration(stepsArray[5].waitBefore)
//                let wait7 = SKAction.waitForDuration(stepsArray[6].waitBefore)
//                let wait8 = SKAction.waitForDuration(stepsArray[7].waitBefore)
//                let wait9 = SKAction.waitForDuration(stepsArray[8].waitBefore)
//                let wait10 = SKAction.waitForDuration(stepsArray[9].waitBefore)
//                let wait11 = SKAction.waitForDuration(stepsArray[10].waitBefore)
        
        
        
        let sequence = SKAction.sequence([wait1, create, wait2, create, wait3, create, wait4, create, wait5, create])
//        let repeatTut = SKAction.repeatAction(sequence, count: 9)
        
        runAction(sequence)
    }

    

    
    func createTutorialRocks(rockTutorialPerc: CGFloat, positionPlus: CGFloat, waitTime: Double) {
        
        rockHeight = (frame.height * (heightOfRocks))
        
        
        
        
        
        
        
        
        let leftRock = SKShapeNode(rectOfSize: CGSize(width: (frame.width), height: (rockHeight)), cornerRadius: (cornerRad))
        leftRock.fillColor = themeColor
        leftRock.strokeColor = themeBorderColor
        leftRock.lineWidth = themeBorderWidth
        
        leftRock.physicsBody = SKPhysicsBody(rectangleOfSize: CGSize(width: ((frame.width) + (themeBorderWidth)), height: ((rockHeight) + (themeBorderWidth))))
        
        
        
        leftRock.physicsBody?.dynamic = false
        
        
        
        let rightRock = SKShapeNode(rectOfSize: CGSize(width: (frame.width), height: (rockHeight)), cornerRadius: (cornerRad))
        rightRock.fillColor = themeColor
        rightRock.strokeColor = themeBorderColor
        rightRock.lineWidth = (themeBorderWidth)
        
        
        rightRock.physicsBody = SKPhysicsBody(rectangleOfSize: CGSize(width: ((frame.width) + (themeBorderWidth)), height: ((rockHeight) + (themeBorderWidth))))
        rightRock.physicsBody?.dynamic = false
        
        
        leftRock.zPosition = CGFloat(10 + (21 * levelNumber))
        rightRock.zPosition = CGFloat(10 + (21 * levelNumber))
        
        
        // 2
        let rockCollision = SKSpriteNode(color: UIColor.clearColor(), size: CGSize(width: (frame.width * 2), height: 32))
        
        rockCollision.physicsBody = SKPhysicsBody(rectangleOfSize: rockCollision.size)
        rockCollision.physicsBody?.dynamic = false
        
        rockCollision.name = "scoreDetect"
        
        addChild(leftRock)
        addChild(rightRock)
        addChild(rockCollision)
        
        
        
        // 3
        
        let rockWidth = frame.width
        
        let yPosition = frame.height + leftRock.frame.height
        
        let rockDistance = frame.width * (rockTutorialPerc)
        
        let min = CGFloat(((frame.width) * (wallWidth)) - (rockWidth / 2))
        
        let xPosition = CGFloat(min + ((positionPlus) * frame.width))
        
        
        
        // 4
        leftRock.position = CGPoint(x: xPosition, y: yPosition)
        rightRock.position = CGPoint(x: xPosition + rockWidth + rockDistance, y: yPosition)
        
        
        rockCollision.position = CGPoint(x: xPosition, y: CGRectGetMidY(frame))
        
        rockCollision.position = CGPoint(x: CGRectGetMidX(frame), y: yPosition + (rockCollision.size.height * 2))
        
        
        
        
        
        let endPosition = frame.height + (leftRock.frame.height * 2)
        
        let moveAction = SKAction.moveByX(0, y: -endPosition, duration: timeOfRockMovement)
        let moveSequence = SKAction.sequence([moveAction, SKAction.removeFromParent()])
        
        
        
        leftRock.runAction(moveSequence)
        
        rightRock.runAction(moveSequence)
        rockCollision.runAction(moveSequence)
        
        ++stepNumber
        
        currentStep = stepsArray[stepNumber]
        
        SKAction.waitForDuration(currentStep.waitBefore)
        
    }

    
    
    
    
    
    func saveHighscore(score:Int) {
        
        //check if user is signed in
        if GKLocalPlayer.localPlayer().authenticated {
            
            let scoreReporter = GKScore(leaderboardIdentifier: "CURVE.Highscore") //leaderboard id here
            
            scoreReporter.value = Int64(score) //score variable here (same as above)
            
            let scoreArray: [GKScore] = [scoreReporter]
            
            GKScore.reportScores(scoreArray, withCompletionHandler: {(error : NSError?) -> Void in
                if error != nil {
                    print("error")
                }
                else {
                    print("reported correctly")
                }
            })
            
        }
        
    }

    
    
    
    
    
    
}
