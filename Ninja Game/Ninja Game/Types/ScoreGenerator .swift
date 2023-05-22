//
//  ScoreGenerator .swift
//  Ninja Game
//
//  Created by Salavat on 20.05.2023.
//

import Foundation

class ScoreGenerator {
    
    static let sharedInstance = ScoreGenerator()
    private init() {}
    
    static let keyHighScore = "keyHighscore"
    static let keyScore = "keyScore"
    
    func setScore(_ score: Int) {
        UserDefaults.standard.set(score, forKey: ScoreGenerator.keyScore)
    }
    
    func getScore() -> Int {
        return UserDefaults.standard.integer(forKey: ScoreGenerator.keyScore)
    }
    func setHighScore(_ highscore: Int) {
         UserDefaults.standard.set(highscore, forKey: ScoreGenerator.keyHighScore)
    }
    func getHighScore() -> Int {
        return UserDefaults.standard.integer(forKey: ScoreGenerator.keyHighScore)
    }
}
