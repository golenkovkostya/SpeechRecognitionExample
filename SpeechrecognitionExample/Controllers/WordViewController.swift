//
//  WordViewController.swift
//  SpeechrecognitionExample
//
//  Created by Kostya Golenkov on 18.11.17.
//  Copyright © 2017 Kostya Golenkov. All rights reserved.
//

import UIKit
import AVFoundation

class WordViewController: UIViewController {
    var word = ("","")
    
    var player:AVAudioPlayer?
    
    @IBOutlet weak var transcriptionLabel: UILabel!
    @IBOutlet weak var wordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wordLabel.text = word.0
        transcriptionLabel.text = word.1
        guard let url = Bundle.main.url(forResource: word.0, withExtension: "mp3") else { return }
        player = try? AVAudioPlayer(contentsOf: url)
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playWordAction(_ sender: Any) {
        player?.play()
    }
}
