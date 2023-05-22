//
//  GameViewController.swift
//  Ninja Game
//
//  Created by Salavat on 18.05.2023.
//
import GameplayKit
import SpriteKit
import UIKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let scene = MainMenu(size: CGSize(width: 2048, height: 1536))
        scene.scaleMode = .aspectFill
        
        let skView = view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.showsPhysics = true
        skView.ignoresSiblingOrder = true
        skView.presentScene(scene)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
