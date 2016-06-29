//
//  PlaySoundViewController.swift
//  PitchPerfect
//
//  Created by Wilder Pereira on 13/06/16.
//  Copyright © 2016 Wilder Pereira. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundViewController: UIViewController {
    
    var recordedAudioURL: NSURL!
    @IBOutlet weak var stopButton:UIButton!
    @IBOutlet weak var rabbitButton:UIButton!
    @IBOutlet weak var vaderButton:UIButton!
    @IBOutlet weak var snailButton:UIButton!
    @IBOutlet weak var reverbButton:UIButton!
    @IBOutlet weak var echoButton:UIButton!
    @IBOutlet weak var chipmunkButton:UIButton!
    
    var audioFile:AVAudioFile!
    var audioEngine:AVAudioEngine!
    var audioPlayerNode:AVAudioPlayerNode!
    var stopTimer:NSTimer!
    
    enum ButtonType : Int { case Slow = 0, Fast, ChipMunk, Vader, Echo, Reverb, Snail, Rabbit }
    
    
    @IBAction func playSoundsForButton(sender:UIButton){
        switch (ButtonType(rawValue: sender.tag)!) {
        case .Slow:
            playSound(rate: 0.5)
        case .Fast:
            playSound(rate: 1.5)
        case .ChipMunk:
            playSound(pitch: 1000)
        case .Vader:
            playSound(pitch: -1000)
        case .Echo:
            playSound(echo: true)
        case .Reverb:
            playSound(reverb: true)
        case .Snail:
            playSound(rate: 0)
        case .Rabbit:
            playSound(rate: 0)
        }
    }
    
    @IBAction func stopButtonPressed(sender:UIButton){
        print("Stop Button Pressed")
        stopAudio()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        //setupAudio()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        configureUI(.NotPlaying)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
