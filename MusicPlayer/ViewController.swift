//
//  ViewController.swift
//  MusicPlayer
//
//  Created by Stepan Ilmukov on 06.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playButton: UIButton!
    private var shouldPlay: Bool = false
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonDidTouch(_ sender: Any) {
        
        shouldPlay = !shouldPlay
        if shouldPlay {
            play()
        } else {
            pause()
        }
    }
    func play() {
        let pauseImage = UIImage(systemName: "pause.fill")
        playButton.setImage(pauseImage, for: .normal)
    }
    func pause() {
        let playImage = UIImage(systemName: "play.fill")
        playButton.setImage(playImage, for: .normal)
    }
}

